connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A07C9F" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A07C9F-23731093-0"}
fpga -file C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/burst_app_v0_3_6/_ide/bitstream/burst_v_0_3_6.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/burst_platform_v0_3_6/export/burst_platform_v0_3_6/hw/burst_v_0_3_6.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/burst_app_v0_3_6/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/burst_app_v0_3_6/Debug/burst_app_v0_3_6.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
