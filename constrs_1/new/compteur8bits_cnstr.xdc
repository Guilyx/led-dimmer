set_property PACKAGE_PIN T22 [get_ports {S[7]}]
set_property PACKAGE_PIN T21 [get_ports {S[6]}]
set_property PACKAGE_PIN U22 [get_ports {S[5]}]
set_property PACKAGE_PIN U21 [get_ports {S[4]}]
set_property PACKAGE_PIN V22 [get_ports {S[3]}]
set_property PACKAGE_PIN W22 [get_ports {S[2]}]
set_property PACKAGE_PIN U19 [get_ports {S[1]}]
set_property PACKAGE_PIN Y11 [get_ports {S[0]}]
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property PACKAGE_PIN M15 [get_ports decompt]
set_property PACKAGE_PIN F22 [get_ports reset]


# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];