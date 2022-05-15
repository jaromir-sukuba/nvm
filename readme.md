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
