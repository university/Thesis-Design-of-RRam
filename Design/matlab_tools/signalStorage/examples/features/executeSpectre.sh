#normally, these scripts are already pa
export PATH=../../scripts/:$PATH

# this is the command you should execute instead of 
# spectre decoder.scs
#
# no special changes are needed in the netlist
# only transient simulations are written as UWI output though
# DC simulations etc. are written in the default format
#
# update the desired UWI settings in the UWIspectreCompressed.sh script
#UWIspectreCompressed.sh decoder.scs
UWIspectre.sh decoder.scs
