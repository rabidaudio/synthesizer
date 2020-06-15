

![vco response](vco.png)

Here, the frequency measurement flies off to infinity after 5V that's because the frequency has gotten too low to fit in the `.tran` time window. Increasing the time window wide enough to measure the frequency up to CV=10V causes the simulation to timeout. However, the exp. converter remains accurate to 3 decades below 0V, which is hypothetically CV=20V -> A-16 (f=419mHz or a period of \~40 seconds). The power supply max at CV=12 would be A-8 for a period of 9.8s.

Rref was calculated to be 341K but imperically determined from LTSpice model to be 326K. A trim pot should allow precision tuning.

Accurracy seems to be dependant on min/max opamp output voltages. Might be good to invest in a real rail-to-rail comparator or use offset-null of TL071.

VICR_low=-14.7 to [-14.5]
VICR_high=[13] to 13.8
