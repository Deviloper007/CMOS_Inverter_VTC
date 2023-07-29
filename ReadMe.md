# CMOS Analysis using Xschem

![Imgur](https://i.imgur.com/1fYEugt.png)



![Imgur](https://i.imgur.com/8jG7d2p.png)


The analysis is performed on 180nm technology using open source google skywater 130nm pdk

## Voltage Transfer Characteristic

The ratio between width of pmos and nmos taken is 4.5

![Imgur](https://i.imgur.com/5MdBh1M.png)

It was observed that the trip point is approximately 0.905 volts

![Imgur](https://i.imgur.com/nTHzHps.png)

Simulation result of VDD Current shows that the short circuit current during transition is 39.83 microamps
The subthreshold leakage current during High logic is 2.035 picoamps and during Low logic is 448.73 picoamp

## Noise Margin Analysis

![Imgur](https://i.imgur.com/6WeKKjM.png)

The above plot shows the gain of cmos output when it is greater than one

Vil = 0.986 volts
Vih = 1.036 volts
Voh = 1.746 volts
Vol = 0.068 volts

## Transient Analysis

![Imgur](https://i.imgur.com/LxRdYLa.png)

this analysis shows a 20 nanosec time period waveform with 50% duty cycle, rise and fall time of the pulses is 1 nanosec

Through the transient analysis, it can be observed that the power drawn from source is 0.654 microwatts which includes the dynamic, static and short circuit power dissipation.

Fall Time = 34.44 picosec
Rise Time = 29.55 picosec
