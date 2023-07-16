v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 70 80 90 {
lab=GND}
N 80 -110 80 -80 {
lab=Vdd}
N 0 0 40 0 {
lab=vin}
N 80 0 180 0 {
lab=vout}
N 80 -50 100 -50 {
lab=Vdd}
N 100 -80 100 -50 {
lab=Vdd}
N 80 40 100 40 {
lab=GND}
N 100 40 100 70 {
lab=GND}
N 100 70 100 80 {
lab=GND}
N 80 80 100 80 {
lab=GND}
N 80 -100 100 -100 {
lab=Vdd}
N 100 -100 100 -80 {
lab=Vdd}
N 40 -50 40 -0 {
lab=vin}
N 40 0 40 40 {
lab=vin}
N 80 -20 80 10 {
lab=vout}
N -90 0 -0 -0 {
lab=vin}
N -30 -110 80 -110 {
lab=Vdd}
C {sky130_fd_pr/nfet_01v8.sym} 60 40 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 60 -50 0 0 {name=M2
L=0.15
W=4.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -90 30 0 0 {name=Vin value="pulse(0 1.8 0 .1n .1n 10n 20n 10)"}
C {devices/lab_pin.sym} -90 0 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -90 60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 80 90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -30 -80 0 0 {name=Vdd value=1.8}
C {devices/lab_pin.sym} 180 0 2 0 {name=p2 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -30 -50 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -180 -200 0 0 {name=vtc only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 0.02n 40n
.save all"}
C {devices/lab_pin.sym} -30 -110 0 0 {name=p3 sig_type=std_logic lab=Vdd}
