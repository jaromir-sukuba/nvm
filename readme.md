## What is in this repository?
Here are complete set of design files, manufacturing data, source files, test results and other resources that I used the process of building nanovoltmeter. This process was not a coincidence, but response to nanovoltmeter challenge by TiN on [his website](https://xdevs.com/article/nvm_comp/)

## What is nanovoltmeter and what is it good for?
Well, nanovoltmeter is voltmeter that has sensitity, noise and stability good enough to resolve voltages expressed in nanovolts. While many multimeters do have quite sensitive low voltage ranges, the resolution (least significant digit) is usually in order of hundreds of nanovolts - and value of this last digit is often diminished by noise and nonlinearity of the meter. So, for proper low signal measurements having higher sensitivity is mandatory.
Measurement of such as low voltages is useful for many applications, for example resolving small voltage differences in various differential and bridge circuits, measurement of very small resistances - with appropriate current source.
Commercial nanovoltmeters do exist, like Keithley model 2182A or Keysight 34420a, but with hefty price tag, so DIY design definitely has its place.

## XDEVS challenge
While I was tinkering with DIY test and measurement tools for a while now, I never had impulse to discover nanovolt world. Such as trigger happened on September 2nd, 2021, when TiN from xdevs site launched [nanovolt challenge](https://xdevs.com/article/nvm_comp/). In nutshell, it called for design of opensourced nanovoltmeter, with parameters comparable to commercial designs and timeframe of 256 days. That is nontrivial task, in my case it was even more so, because I not only never designed low signal circuits before, but I never even operated any nanovoltmeter. That is unfavorable starting position and jumping into deep end rather than dipping my toes into the problematics. To ease my mind, I waited a few days to see how others reacted at [eevblog forum](https://www.eevblog.com/forum/metrology/nanovolt-design-challenge-build-and-show-your-own-nv-meter-in-256-days/?all). I can't say that it encouraged me.
On the other hand, I spent a few days researching online sources and studying service manuals of proven test gear of reputable vendors. Too bad they stopped supplying us with schematics in early 90's of last century; but even that material was very helpful in understanding both what are the requirements for such as meter, as well as means to achieve it.




![](https://github.com/jaromir-sukuba/nvm/blob/master/media/block.png)
