onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+mig_7series_nodebug -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mig_7series_nodebug xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {mig_7series_nodebug.udo}

run -all

endsim

quit -force
