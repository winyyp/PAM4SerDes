* vera -emit-osdi: phase_aligner.va loaded by ngspice pre_osdi
.control
pre_osdi phase_aligner.osdi
.endc
.model pa phase_aligner
N1 cml_dff_x4 clk7_cml2cmos ck_28 pa

Vdata cml_dff_x4 0 pulse(-0.3 0.3 0 3p 3p 139.86p 285.72p)
Vclk clk7_cml2cmos 0 pulse(0 0.7 20.715p 3p 3p 68.43p 142.86p)

.control
tran 1p 10n 0 1p uic
meas tran tgap trig v(cml_dff_x4) val=0 td=9713.48p rise=1 targ v(ck_28) val=0.35 td=9713.48p rise=1
meas tran vcap_1n find v(n1#vi_ou) at=1n
meas tran vcap_end find v(n1#vi_ou) at=9.7n
print tgap vcap_1n vcap_end
.endc
.end
