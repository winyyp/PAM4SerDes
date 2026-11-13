* vera --emit-osdi: dt3_test.va loaded by ngspice pre_osdi
.control
pre_osdi delay_t3.osdi
.endc
.model tm delay_t3 t3=71.43e-12
N1 a b tm
V1 a 0 pwl(0 0 90p 0 100p 0.3)
.control
tran 1p 400p 0 1p
meas tran time_in when v(a)=0.15 rise=1
meas tran time_out when v(b)=0.15 rise=1
print time_in time_out
.endc
.end
