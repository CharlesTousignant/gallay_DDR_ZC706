#LED
set_property PACKAGE_PIN A17 [get_ports led]
set_property IOSTANDARD LVCMOS15 [get_ports led]

#Push button
set_property PACKAGE_PIN AK25 [get_ports reset]
set_property IOSTANDARD LVCMOS25 [get_ports reset]

#Clock
set_property PACKAGE_PIN H9 [get_ports clk_p]
set_property IOSTANDARD LVDS [get_ports clk_p]

set_property PACKAGE_PIN G9 [get_ports clk_n]
set_property IOSTANDARD LVDS [get_ports clk_n]