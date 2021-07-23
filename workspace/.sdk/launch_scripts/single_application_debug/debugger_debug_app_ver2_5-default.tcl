connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A07C9F" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A07C9F-23731093-0"}
fpga -file C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/debug_app_ver2_5/_ide/bitstream/axi_ddr_hardware_v2_5_debug.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/debug_platform_ver2_5/export/debug_platform_ver2_5/hw/axi_ddr_hardware_v2_5_debug.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/debug_app_ver2_5/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/debug_app_ver2_5/Debug/debug_app_ver2_5.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
