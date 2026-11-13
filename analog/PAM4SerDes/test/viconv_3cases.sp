* vera -emit-osdi: viconv_test.va loaded by ngspice pre_osdi
.control
pre_osdi viconv_test.osdi
.endc
.model vm viconv_test

N1 data_in clk_in1 ou1 vm
N2 data_in clk_in2 ou2 vm
N3 data_in clk_in3 ou3 vm

Vdata data_in 0 pulse(-0.3 0.3 0 3p 3p 139.86p 285.72p)

Vclk1 clk_in1 0 pulse(0 0.7 35.715p 3p 3p 68.43p 142.86p)
Vclk2 clk_in2 0 pulse(0 0.7 20.715p 3p 3p 68.43p 142.86p)
Vclk3 clk_in3 0 pulse(0 0.7 50.715p 3p 3p 68.43p 142.86p)

Vs1 ou1 0 0
Vs2 ou2 0 0
Vs3 ou3 0 0

.control
tran 1p 3000p 0 1p
meas tran iavg1 avg i(Vs1) from=714.3p to=2857.2p
meas tran iavg2 avg i(Vs2) from=714.3p to=2857.2p
meas tran iavg3 avg i(Vs3) from=714.3p to=2857.2p
print iavg1 iavg2 iavg3
.endc
.end
