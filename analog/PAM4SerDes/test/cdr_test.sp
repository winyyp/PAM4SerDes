* vera -emit-osdi: cdr_pd_linear.va loaded by ngspice pre_osdi
.control
pre_osdi cdr_pd_linear.osdi
.endc
.model pd cdr_pd_linear

N1 vout_b clk14_I1 clk14_Q1 ou1 pd
N2 vout_b clk14_I2 clk14_Q2 ou2 pd
N3 vout_b clk14_I3 clk14_Q3 ou3 pd

Vdata vout_b 0 pulse(-0.3 0.3 0 3p 3p 32.71p 71.42p)

VclkI1 clk14_I1 0 pulse(-0.3 0.3 16.06p 3p 3p 32.71p 71.42p)
VclkQ1 clk14_Q1 0 pulse(-0.3 0.3 33.92p 3p 3p 32.71p 71.42p)

VclkI2 clk14_I2 0 pulse(-0.3 0.3 10.06p 3p 3p 32.71p 71.42p)
VclkQ2 clk14_Q2 0 pulse(-0.3 0.3 27.92p 3p 3p 32.71p 71.42p)

VclkI3 clk14_I3 0 pulse(-0.3 0.3 22.06p 3p 3p 32.71p 71.42p)
VclkQ3 clk14_Q3 0 pulse(-0.3 0.3 39.92p 3p 3p 32.71p 71.42p)

Vs1 ou1 0 0
Vs2 ou2 0 0
Vs3 ou3 0 0

.control
tran 1p 3000p 0 1p
meas tran iavg1 avg i(Vs1) from=714.2p to=2856.8p
meas tran iavg2 avg i(Vs2) from=714.2p to=2856.8p
meas tran iavg3 avg i(Vs3) from=714.2p to=2856.8p
print iavg1 iavg2 iavg3
.endc
.end
