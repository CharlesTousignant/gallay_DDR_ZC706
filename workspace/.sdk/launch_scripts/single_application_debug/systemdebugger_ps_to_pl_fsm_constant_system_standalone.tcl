connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A07C9F" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A07C9F-23731093-0"}
fpga -file C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/ps_to_pl_fsm_constant/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/ps_ppl_platform_no_input/export/ps_ppl_platform_no_input/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/ps_to_pl_fsm_constant/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/ps_to_pl_fsm_constant/Debug/ps_to_pl_fsm_constant.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
