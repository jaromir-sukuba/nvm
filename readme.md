## What is in this repository?
Here are complete set of design files, manufacturing data, source files, test results and other resources that I used the process of building nanovoltmeter. This process was not a coincidence, but response to nanovoltmeter challenge by TiN on [his website](https://xdevs.com/article/nvm_comp/)

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

Designing such as instrument, especially on DIY base is a lot of pingponging between mechanical and eletrical design. I kind of could imagine how large the thing is going to be (say A4 page size as footprint) and I knew I had to cram everything inside. Optiong for larger enclosure would give me much more freedom and other benefits (like easier dissipation of device heat, helping to fight with TEMF), but would be impractically large. Finding appropriate enclosure wasn't easy - at first I thought of using G756 I used before in my [DIY SMU](https://github.com/jaromir-sukuba/J-SMU), but I preferred metal enclosures here - because of shielding of electrical interference, and with steel enclosure even a bit of magnetic interference. Finally I settled down on 1EP802825 from Modushop.
That was the right time to take a look at electrical domain. The Earthy and floating parts (separated by isolation barrier) have to be physically separated in sub-enclosures (that calls for two PCBs as minimum) and in order to have easier debugging and modifications of the circuit, I decided to separate the floating part into two PCBs. One would hold FPGA control, reference and ADC, another one would consist of both amplifiers and ACAL circuits. Since the enclosure is 80mm tall, there is no problem to stack at least two PCBs on top of each other, via pinheaders and metric spacers.
So, two PCBs for floating part, one for earthy part, but the backside connectors have to be mounted somehow - here I added another PCB and front panel pushbuttons also needed PCB for mechanical reasons, that resulted in total count of 5 PCBs. I named the PCBs with human names and gave them functionality:

Bart - I felt like this one will be tricky and there will be problems with this one. Contains LNA, main amplifier, ACAL dividers and MUXes.
Homer - largest PCB, contains FPGA, ADC, references. Closely related to Bart.
Lisa - communication board, back panel PCB
Meggie - simplest PCB, just to hold buttons
Marge - contains PSU to feed all other PCBs, plus digital circuits.

With electronics roughly separated into basic blocks, I returned back to mechanical design. By the time finished first sketches of the schematics files, I received the eclosure, so I could start with more practical details. It's much easier to visualize potential problems having the real enclosure in hands comapred to studying 3D files (if any, right). For circuit separation I opted for two sheet metal sub-enclosures.
![Internal metal parts](/media/mparts.png?raw=true). The smaller portion on right holding analog circuitry, the left portion to ohold earthy circuits - it's somehow shorter, to make room for backpanel PCB.
I prepared bunch of holes into the enclosures to allow mounting PCBs via metric spacers and now having physical constraints I jumped back to PCB design.

## NVM design, part 3 - more detailed circuit description
TODO

## NVM usage
TODO

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
At first I measured INL of ADC itself, against Solartron 7081 as reference. 0-10V voltage sweep was provided by DIY precision voltage source (LTZ1000A reference, AD5791B DAC). Measured INL graph:
![ADC INL graph](/media/lina.png?raw=true)
Then I measured the same INL with Bart PCB, this time with Keithley 2010 as reference meter.
![NVM INL graph](/media/linn.png?raw=true)
There are differences, but I believe it lies within acceptable margin for 6,5 digit meter.
#### Bandwidth and normal mode rejection
I measured ADC transfer function for sine input with 1Vp-p amplitude, stepped from 1Hz to 80Hz. Meter was set to 2NPLC, no autozero, analog filter on, 10V range.
![Frequency response graph](/media/freq.png?raw=true)
Resulting bandwidth for -3B is between 9 and 10Hz, normal mode rejection for 25, 50 and 75Hz is around -90dB

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

On lowest range and 6,5 digit readout the resolution is 100pV and noise in 10Hz badwidth is ~22nV p-p.

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
