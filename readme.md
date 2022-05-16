## What is in this repository?
Here are complete set of design files, manufacturing data, source files, test results and other resources that I used the process of building nanovoltmeter. This process was not a coincidence, but response to nanovoltmeter challenge by TiN on [his website](https://xdevs.com/article/nvm_comp/)
![Outside view](/media/IMG_0002_.jpg?raw=true)

## What is nanovoltmeter and what is it good for?
Well, nanovoltmeter is voltmeter that has sensitity, noise and stability good enough to resolve voltages expressed in nanovolts. While many multimeters do have quite sensitive low voltage ranges, the resolution (least significant digit) is usually in order of hundreds of nanovolts - and value of this last digit is often diminished by noise and nonlinearity of the meter. So, for proper low signal measurements having higher sensitivity is mandatory.
Measurement of such as low voltages is useful for many applications, for example resolving small voltage differences in various differential and bridge circuits, measurement of very small resistances - with appropriate current source.
Commercial nanovoltmeters do exist, like Keithley model 2182A or Keysight 34420a, but with hefty price tag, so DIY design definitely has its place.

## XDEVS challenge
While I was tinkering with DIY test and measurement tools for a while now, I never had impulse to discover nanovolt world. Such as trigger happened on September 2nd, 2021, when TiN from xdevs site launched [nanovolt challenge](https://xdevs.com/article/nvm_comp/). In nutshell, it called for design of opensourced nanovoltmeter, with parameters comparable to commercial designs and timeframe of 256 days. That is nontrivial task, in my case it was even more so, because I not only never designed low signal circuits before, but I never even operated any nanovoltmeter. That is unfavorable starting position and jumping into deep end rather than dipping my toes into the problematics. To ease my mind, I waited a few days to see how others reacted at [eevblog forum](https://www.eevblog.com/forum/metrology/nanovolt-design-challenge-build-and-show-your-own-nv-meter-in-256-days/?all). I can't say that it encouraged me.
On the other hand, I spent a few days researching online sources and studying service manuals of proven test gear of reputable vendors. Too bad they stopped supplying us with schematics in early 90's of last century; but even that material was very helpful in understanding both what are the requirements for such as meter, as well as means to achieve it.

## NVM design, part 1 - design requirements
Armed with new knowledge I started dissecting the challenge project requirements. 

> Have local onboard power regulation. Single common DC (+9 to +24 VDC) or 110/220VAC mains input jack is expected.

Okay, I think I can do this. On the other hand, any reasonable mains powered voltmeter has to have isolated PSU section which powers the input dividers/amplifiers and ADC, so that measurement potential could be unrelated to digital part with all the user IO and communication IO - which is needed to be Earthed or somewhere close to that potential.
This one calls for either DC or AC power, but it could be combined by having PSU operating from appropriate DC voltage (12V sounds like a good starting point) and attach small AC/DC SMPS to provide power from mains.

> Provide DC Voltage measurement ranges ±100 µV or below and include ±1V and ±10VDC range.

This one looks innocent, but having both 10V and 100uV input on the same jacks implies either switching input amlpifiers, or inserting voltage divider into the signal path, preferable by relay.

> Have at least two user-accessible input channels for signal to be measured.

Oh my, another relay. Relays are good, but may introduce offset errors into signals, due to thermal voltages (TEMF, short for thermal electromotive force) generated on contacts, when relay heats up from coil power. The voltages may be around few microvolts down to few nanovolts, definitely something to consider in this design. TEMF is the main enemy of nanovoltmeter and this acronym will be used in following text a few more times.

> Have low-thermal connection interface to minimize thermal EMF parasitic errors.

TEMF again, I told you so.   
  
> Provide at least 5½-digit resolution for each reading.

Sounds reasonable. I've done long-scale ADC projects like [voltmeter](https://www.eevblog.com/forum/metrology/diy-6-5-digit-voltmeter/) and [voltohmmeter](https://www.eevblog.com/forum/metrology/diy-6-digit-handheld-volohmmeter/msg2978912/#msg2978912) so perhaps I could both recycle soemthing and also bring something new on the table. I think commercial sigma-delta AD converters would do the job too, but DIY ADC has definitely more to it.

> Ability to digitize input DC signal with resolution at least 10 nV and noise better than 30 nV peak to peak over at least 0.1-10 Hz bandwidth.

More numeric requirements, nice. 30nVp-p in 10Hz bandwidth is not very relaxed requirement - older meters like Keithley model 181 would cut it, current models so-so.

> Have autozero functionality to correct for static offsets.

That is logical requirement. I may do some more effort by introducing autocalibration.

> Have galvanic isolated analog front end, with isolation resistance to earth/chassis better than 10 GΩ.

That is what I proposed earlier, too. 

> Device should have ADC (any type) integrated.

This is likely to frame the project into standalone modus operandi.

> Have good long-term stability and use ovenized DC voltage reference (LM399, LTZ1000 or LTFLU with oven).

I wouldn't think of using anything worse than LM399 (or ADR1399) anyway.

> Provide RJ45 Ethernet and/or IEEE-488 GPIB interface for communications with external world / external equipment.

Fair point. USB is simpler, though.

> 40W total input power budget (friendly to battery operation for sensitive experiments)

You wouldn't want your nanovoltmeter to consume more than 40W anyway. 40W of heat is quite a bit of heat and it's not easy to dissipate it without introducing more TEMF errors.

> Device should be fully operational as standalone device (e.g. no debuggers or external equipment attached to make it work).

OK, fair.

After a bit of optimization, I came up with this block diagram.
![Block diagram](/media/block.png?raw=true)
It's basically done to fit the requirements above, with a few spicy parts I added for extra fun.
Input from either input connection is selected via input multiplexor. There is also third input, to be discussed later. This MUX passes selected channel to low noise amplifier (LNA) to be amplified and then routed via another MUX into next, main amplifier. Output of the amplifier is brought to ADC. This ADC has nominal 10V input range, so that basic range with LNA is 10mV (10mV x 1000 = 10V). In order to have even more sensitive ranges, main amplifier has option to switch to x1 (pass-through), x10 and x100 gain, combined into additional 1mV and 100uV ranges. When LNA is bypassed, input signal is brought directly to main amplifier, allowing for 10V, 1V and 100mV ranges, seamlessly covering 100uV to 10V input range. That would make nanovoltmeter already, but I added two more blocks - first is easy, low-pass filter (also known as LPF) to cut down noise, especially on sensitive ranges. Another one is auto-calibration block, which serves to decide gain of both amplifiers. In ideal case, the meter needs only to know its onboard 7V reference voltage and can derive lower ranges automatically without calibration/adjustment and keep it precise after resistors in dividers and amplifiers drift due to age or temperature.
Whole upper portion of the circuit is held behing isolation barrier in order to keep input terminals separated from power supply potential - either external DC or mains voltage. Bottom portion is consisting mainly from PSU circuit and digital circuitry, including user IO and communication channels, like ethernet and USB. For added fun factor I also included GPIB as low priority subproject.

## NVM design, part 2 - divide and conquer

Designing such as instrument, especially on DIY base is a lot of pingponging between mechanical and eletrical design. I kind of could imagine how large the thing is going to be (say A4 page size as footprint) and I knew I had to cram everything inside. Optiong for larger enclosure would give me much more freedom and other benefits (like easier dissipation of device heat, helping to fight with TEMF), but would be impractically large. Finding appropriate enclosure wasn't easy - at first I thought of using G756 I used before in my [DIY SMU](https://github.com/jaromir-sukuba/J-SMU), but I preferred metal enclosures here - because of shielding of electrical interference, and with steel enclosure even a bit of magnetic interference. Metal also helps with heat dissipation. Finally I settled down on 1EP802825 from Modushop.
That was the right time to take a look at electrical domain. The Earthy and floating parts (separated by isolation barrier) have to be physically separated in sub-enclosures (that calls for two PCBs as minimum) and in order to have easier debugging and modifications of the circuit, I decided to separate the floating part into two PCBs. One would hold FPGA control, reference and ADC, another one would consist of both amplifiers and ACAL circuits. Since the enclosure is 80mm tall, there is no problem to stack at least two PCBs on top of each other, via pinheaders and metric spacers.
So, two PCBs for floating part, one for earthy part, but the backside connectors have to be mounted somehow - here I added another PCB and front panel pushbuttons also needed PCB for mechanical reasons, that resulted in total count of 5 PCBs. I named the PCBs with human names and gave them functionality:

Bart - I felt like this one will be tricky and there will be problems with this one. Contains LNA, main amplifier, ACAL dividers and MUXes.  
Homer - largest PCB, contains FPGA, ADC, references. Closely related to Bart.  
Lisa - communication board, back panel PCB  
Meggie - simplest PCB, just to hold buttons  
Marge - contains PSU to feed all other PCBs, plus digital circuits.  

With electronics roughly separated into basic blocks, I returned back to mechanical design. By the time finished first sketches of the schematics files, I received the eclosure, so I could start with more practical details. It's much easier to visualize potential problems having the real enclosure in hands comapred to studying 3D files (if any, right). For circuit separation I opted for two sheet metal sub-enclosures.
![Internal metal parts](/media/mparts.png?raw=true). The smaller portion on right holding analog circuitry, the left portion to ohold earthy circuits - it's somehow shorter, to make room for backpanel PCB.
I designed bunch of holes into the enclosures to allow mounting PCBs via metric spacers and now having physical constraints I jumped back to PCB design.
![Enclosure with metal parts](/media/enc_1.jpg?raw=true)

## NVM design, part 3 - selected details of circuit operation
In this section I'll discuss a few selected design choices of this instrument.
#### LNA (Bart board)
I went through a few design iterations of LNA and it took me roughly half of the development time. I tried DC coupled JFET amplifiers, AC coupled JFET amplifiers in chopper configuration for DC operation as well as paralleling opamps. The parallel configuration brought me the least amount of headache and despite the insane amount of components used, it is not that expensive after all. As best in class, IF3602 JFETs are both expensive and suffer by huge parameter spread, making them quite expensive solution. There are cheaper JFETs around, but their noise parameters mean more paralleled pieces - with problem it brings, for example binning/matching the transistors. More transistors or fewer low noise types also bring more gate capacitance, requiring more circuit support to diminish its influence. Enclosing the amplifier into chopper configuration brings more issues to solve - for example I had to deal with input current and temperature gradients increasing voltage offset. It's very likely that all those problems are solvable with more time and effort and would bring LNA with lower noise and drift that what I have in current NVM, but at some point I decided to go different way and built the LNA out of massively parallel off-the-shelf opamp amplifier. Integrated autozero/chopper opamps do have much better starting point with respect to temperature stability and input current, so after a bit of searching and comparing I opted for MCP6V51 from Microchip, as the one with very good price/performance ratio. Typical input noise voltage is specified at 210nV in 10Hz bandwidth and I experimentally confirmed this by building 35 piece opamp board first. 
![Amp35](/media/amp_t1.jpg?raw=true)
The noise parameters were in good agreement with datasheet values, that gave me confidence to go this way. As calculated I need at least 50 MCP6V51s to get under 30nV p-p criteria, so I opted for 100 pieces, in 10x10 matrix, as per idea schematics below
![LNA diagram](/media/amp.PNG?raw=true)
Each 10 first stage amplifiers in noninverting configuration is brought to second stage summing amplifier, and all 10 second stage amplifiers are summed in third stage amplifier. Overall gain of the LNA is 1000.
Last stage summing amplifier is also used to inject voltage to null offset voltage of LNA. Bart board has DAC and its amplifiers (U119 and U120) for this reason. Second channel of DAC is designed to compensate input current - by injecting current of opposite sign into LNA input. I measured the uncompensated current to be around 2nA and in my current hardware the injection resistor isn't fitted on board. By using this feature, I expect the current all well below 100pA.
LNA injects ground current into ground net of the circuit, and the current is dependant on LNA input voltage (and therefore LNA output voltage, too). Ground current may cause unwanted votlage shifts between ground potentials of the circuit, especially at high gain operation. To counteract this ground current, amplifier with U121 is setup to source current of opposite polarityinto the ground, at areas where LNA resides.
Bart board is 4-layer, with internal layers being ground nets, for both electrical and thermal reasons.

#### ADC (Homer board)
The ADC is integrating, charge balance type with no rundown and residual integrator voltage reading. SN74LV4053 is used for integrator current steering, integrator is of classic two opamp composite type. The FPGA does multiple jobs here, apart from orchestrating actions around the ADC, it also provides interface between isolated serial link and multiple digital outputs used to switch relays, multiplexer and analog filter and does startup timing for smooth PSU startup.
I measured INL of ADC itself, against Solartron 7081 as reference. 0-10V voltage sweep was provided by DIY precision voltage source (LTZ1000A reference, AD5791B DAC). Measured INL graph:
![ADC INL graph](/media/lina.png?raw=true)
The INL of this magnitude may not be obviously needed for this application, but I wanted to employ ACAL functionality, where voltage transfer between ranges is expects good INL of the ADC, so I was after good linearity and spent some time honing it.

#### PSU (Marge board)
My first idea for PSU was to use two back-to-back 50Hz transformers. One would provide few volts (providing first isolation barrier and ground reference) and second would step it up to the level appropriate for +-16V and 5V DC outputs. Later I expended this idea by using audio frequency amplifier circuit to feed the second transformer and omitting the first transformer. Using AF amplifier (fed by appropriate oscilaltor) to drive transformer has a few advantages - the whole circuit could be powered from single DC voltage and oscillation frequency can be adjusted to find good compromise between leakage and efficiency. Using classic linear amplifiers would bring way too much thermal dissipation into the enclosure, so I opted for cheap and plentiful TPS3116 D-class amplifier. Oscillator signal - either from local single opamp multivibrator or amplified singal provided by MCU - is shaped by series of lowpass filters, so that amplifier is fed by low harmonic content signal. Transformer secondary is brought to fairly standard set of regulators with LM317/337 and 7805.
I measured ground leakage from the isolated PSU section and its efficiency as function of driving frequency.
![PSU graph](/media/psu-freq.PNG?raw=true)
As per expectations, lower frequency also brings lower leakage current, but going too low causes efficiency to plummet at some point. I opted for 48Hz, where I measured leakage well below 200nA p-p. At this level leakage measurement is very sensitive to nearby electric fields and conducted interference. After enclosing the test setup into shielded box the measured leakage fell to 40nA p-p, indicating the previous measurement was too pessimistic. I believe even the 40nA figure is pessimistic still and influenced by shielding setup and the oscilloscope I used. For proper test results I'd need larger shielded cage and battery powered oscilloscope, but I didn't want to goo that far.

## Mechanical parts
While the enclosure is centered around Modushop enclosure, few more parts were needed.

#### Reference cover
This two-part 3D printed component prevents airflows around ADR1399 reference, decreasing its noise somehow.
![Ref cover](/media/refcover.jpg?raw=true)
![Ref cover](/media/refcover2.jpg?raw=true)

#### Lisa board holder
This 3D printed component keeps Lisa board in its place on back panel.
![Back holder](/media/backpcb.jpg?raw=true)

#### LNA cover
This 3D printed component provides insulation of LNA board area from airflows.
![LNA cover](/media/lnacover.jpg?raw=true)
![LNA cover 2](/media/lnacover2.jpg?raw=true)
The amount of influence on the readings was suprising to me. Here are two graphs of the shorted input measurement, one with cover, one without, the RMS noise voltage is nearly twofold for naked LNA.
![LNA cover graph](/media/lnacover_graph.PNG?raw=true)

## NVM usage
#### Local interface
![Front panel](/media/fpanel.png?raw=true)
13 keys are provided for instrument operation, plus 2-line by 20 characters vacuum flourescent display.
After startup the meter enters default (measurement) mode, with settings read from EEPROM. Typical display layout:
![Display example](/media/disp.png?raw=true)
The first line displays measured voltage and range in obvious way.  
Second line in this example indicates following states:  
CH1 - selected channel 1. Could be either 1 or 2.  
Z0 - zero function (see below) is not active on this range. Could be either 0 or 1.  
10NPLC - ADC integration time in powerline cycle multiplies. Could be either 1, 2, 5, 10 or 20.  
ETH1 - Ethernet is connected and IP address provided via DHCP. Could be either 0 or 1.  

Buttons functions:  
INPUT - by clicking this button, instruments toggles between Input 1 and Input 2 on the 4-pin LEMO connector.  
ZERO - this function enables zeroing measured value (by subtracting constant voltage offset measured at the instant of enabling the function). Each range has it's offset value and is independent of other ranges. Zeroing for given range is disabled by second button press.  
FILT - pressing this button displays analog filter, digital filter and NPLC settings. Each hit of the button moves focus to next setting (value is changed by pressing UP/DOWN controls), third hit returns to default measurement display.  
ACAL - pressing this button starts ACAL procedure and saves the calibration constans into EEPROM memory.  
TRIG - not used in this firmware revision.  
STORE - not used in this firmware revision.  
RECALL - not used in this firmware revision.  
MENU - enables menu. Moving across menu items is done by pressing UP and DOWN keys. Enter enables editing the item value - editation is performed using UP and DOWN keys. Escaping from the menu is possible via ESC button, saving and escaping via MENU button.  
AUTO - not used in this firmware revision.  
ENTER - apart from function in menu function, pressing ENTER in default mode displays IP address of the instrument (if attached to ethernet). Pressing ENTER again returns back to default state.  
UP/DOWN - in menu or filter editing it serves function described above, in default mode it selects higher or lower measurement range.  

#### Remote interface
Instrument could be controlled remotely via ethernet interface, by issuing SCPI-compatible commands.  
'*IDN?' - returns instrument identification  
'*RST' - resets instrument  
'*CLS' - clear status  
SYSTem:ERRor[:NEXT] - lists system error  
SYSTem:ERRor:COUNt? - return amount of system errors  
SYSTem:VERSion? - returns instrument version string  
MEASure:VOLTage? - returns value of measured voltage  
CALibration:VREF - single float parameter, sets value of 7V reference voltage (the only input for ACAL procedure)  
CALibration:VREF? - returns value of 7V reference voltage  
CALibration:UNLock - single integer parameter, locks (0) or unlocks (1) access to calibration EEPROM  
CALibration:SAVe - if access to calibration EEPROM is unlocked, this command saves actual calibration into EEPROM  
CALibration:ACAL - starts ACAL procedure  
SENSe:CHANnel - single integer parameter, sets channel 1 or 2  
SENSe:CHANnel? - returns actual channel number  
SENSe:RANGe - single integer parameter, sets range 1 (100uV) to 6 (10V)  
SENSe:RANGe? - returns actual range number  
SENSe:DFILter - single integer parameter, sets digital filter to 1, 2, 4, 8, 16, 32 or 64 samples  
SENSe:DFILter? - returns digital filter setting  
SENSe:AFILter - single integer parameter, sets analog filter off (0) or on (1)  
SENSe:AFILter? - returns analog filter setting  
SENSe:DIGits - single integer parameter, sets nubmer of displayed digits - 3 to 6  
SENSe:DIGits? - returns nubmer of displayed digits  
SENSe:NPLC - single integer parameter, sets ADC integration period in NPLC cycles to 1NPLC (0), or 2NPLC (1), or 5NPLC (2), or 10NPLC (3), or 20NPLC (4)  
SENSe:NPLC? - returns ADC integration period  
SENSe:AZero - single integer parameter, sets ADC autozero off (0) or on (1)  
SENSe:AZero? - return ADC autozero setting  
SYSTem:BEEPer - single integer parameter, sets beeper off (0) or on (1)  
SYSTem:BEEPer? - return beeper state  

NVM is fully calibrated by ACAL feature. For this it needs to have its reference voltage setup in calibration memory before running ACAL function. The value is accesible only through remote interface and its CALibration:VREF command. If the reference value in calibration memory is outside 6,95-7,3V range, default value 7,05V is assumed. At the moment, individual range calibration isn't supported, but probably will be in future firmware revisions.

## NVM project goals
In this section I'll discuss performance of this instrument and project goals 
#### Noise
The main criteria of this project was to achieve low noise at lowest voltage range. In order to assess this, I logged 20 seconds of shorted input measurements at 100uV range, with no autozero, 2NPLC (integration time 40ms) and 10Hz analog filter on.
![Noise graph](/media/noise.png?raw=true)
The noise is below 25nV p-p.
#### Stability
I recorded roughly 9 hours worth of data with shorted input, while logging ambient temperature too. Meter set to 10NPLC, autozero on, analog filter on. I separated the data into 64 seconds long chunks, averaged it and used as data points. I tried to control the room temperature to obtain some variation.
![Longer noise graph](/media/lnoise.png?raw=true)
There is no clear temperature dependancy. I read the data as sensitivity to temperature changes is perhaps more prominent than the tempco of the instrument.
#### Linearity
I measured the same INL of the NVM against Keithley 2010 as reference meter.
![NVM INL graph](/media/linn.png?raw=true)
I believe it lies within acceptable margin for 6,5 digit meter.
#### Bandwidth and normal mode rejection
I measured ADC transfer function for sine input with 1Vp-p amplitude, stepped from 1Hz to 80Hz. Meter was set to 2NPLC, no autozero, analog filter on, 10V range.
![Frequency response graph](/media/freq.png?raw=true)
Resulting bandwidth for -3B is between 9 and 10Hz, normal mode rejection for 25, 50 and 75Hz is around -90dB
#### Stepping the input with various voltages from Keithley 260 voltage source
Meter set to 20NPLC, autozero on, analog filter on, digital filter=2, 100uV range. Stepping by 10uV steps. The source has undergone massive repair and is out of calibration - but served well as test source to assess linearity and stability of NVM.
![10uV steps graph](/media/steps10uv.PNG?raw=true)
And similarly for 1uV steps. Note that 10uV step is missing, due to bad contact or resistor on Keithley 260 source.
![10uV steps graph](/media/steps1uv.PNG?raw=true)
#### Response to 10uV input step with various digital filter settings
Meter set to 20NPLC, autozero on, analog filter on, 100uV range. K260 induces 10uV step on input terminals, response time with various digital filter settings is observed.
![10uV steps graph](/media/dfilter.PNG?raw=true)
Response is very typical for boxcar average used as digital filter here.

#### Contest goals accomplishment
Now returning back to contest call:

> Have local onboard power regulation. Single common DC (+9 to +24 VDC) or 110/220VAC mains input jack is expected.

Yes, it works on both DC 12V and 230VAC sources.

> Provide DC Voltage measurement ranges ±100 µV or below and include ±1V and ±10VDC range.

Yes, input ranges are bipolar 100uV, 1mV, 10mV, 100mV, 1V and 10V.

> Have at least two user-accessible input channels for signal to be measured.
> Have low-thermal connection interface to minimize thermal EMF parasitic errors.

Yes, two inputs with reasonably low TEMF LEMO connector.

> Provide at least 5½-digit resolution for each reading.

6,5digit provided.

> Ability to digitize input DC signal with resolution at least 10 nV and noise better than 30 nV peak to peak over at least 0.1-10 Hz bandwidth.

On lowest range and 6,5 digit readout the resolution is 100pV and noise in 10Hz bandwidth is ~20-25nV p-p.

> Have autozero functionality to correct for static offsets.

Yes, autozero and autocalibration provided.

> Have galvanic isolated analog front end, with isolation resistance to earth/chassis better than 10 GΩ.

Analog portion is isolated. Common mode current is below 100nA p-p.

> Device should have ADC (any type) integrated.

I used my own integrating multislope ADC design.

> Have good long-term stability and use ovenized DC voltage reference (LM399, LTZ1000 or LTFLU with oven).

I used ADR1399. Can't assess long-term stability by now.

> Provide RJ45 Ethernet and/or IEEE-488 GPIB interface for communications with external world / external equipment.

RJ45 Ethernet provided, hardware ready for GPIB, too. Apart from that, USB interface is on board.

> 40W total input power budget (friendly to battery operation for sensitive experiments)

Current draw is 12W.

> Device should be fully operational as standalone device (e.g. no debuggers or external equipment attached to make it work).

No external equipment needed for the meter to operate.

#### Cost and component availability/repairablity
Total cost of the instrument components is around 400EUR. All parts I used are off-the-shelf components or are easy to order, with the exception of power transformer. This is DIY-ed, but I believe many custom transformers manufacturers are able to deliver such as transformer.
Apart from that, I tried to use components with most generic footprints - like SOT23 or SOIC8 for opamps, SOT23 for transistors, most of resistors do have universal footprint able to accomodate for MiniMELF (which I used becuase I wanted to), 1206 or 0805 resistor sizes, used common display interface and so on. This is to help with laternative components sourcing, topic so hot in 2022, when component crisis is so much influencing both professional as well as hobby electronics development and production. Despite my efforts, it's likely that some components in the BOM lists will be unavailable at usual vendors and it's hard to make future-proof designs in this respect.

## Future plans
There is a few features the meter hardware is supposedy able to do, but are not implemented at the moment and I consider this as TODO list for future work on this project.
- implement main frequency synchronous measurements. Zero-cross detector is already fitted on Marge board and ADC supports triggering by external signal, so it should be matter of firmware support.
- implement input current compensation. All parts except of large value resistor are already on the board, so after fitting it this feature should be again matter of firmware.
- polish the SCPI commands implementation, add more commands and full manual calibration features.
- do more exporation and testing of the ACAL feature. As it is, works fine, but I think it could do with better repeatability.
- find lower power opamps types - this could decrase current consumption, which is always welcome in test gear.
- provide support for GPIB. Not that I need GPIB that much, but I think exploration of GPIB could be interesting project.


## Files contained in this repository
TODO
