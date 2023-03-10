    # Clock signal
    set_property PACKAGE_PIN W5 [get_ports clk_fpga]							
        set_property IOSTANDARD LVCMOS33 [get_ports clk_fpga]
        create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_fpga]
	
    # Ext LED
    set_property PACKAGE_PIN L1 [get_ports {led}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {led}]
    
    # 7 Segment Display:
    # begin
    # Anode map:
    set_property PACKAGE_PIN U2 [get_ports {anode_sel[0]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {anode_sel[0]}]
    set_property PACKAGE_PIN U4 [get_ports {anode_sel[1]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {anode_sel[1]}]
    set_property PACKAGE_PIN V4 [get_ports {anode_sel[2]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {anode_sel[2]}]
    set_property PACKAGE_PIN W4 [get_ports {anode_sel[3]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {anode_sel[3]}]
    # Seg LEDs map:
    set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
    set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
    set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
    set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
    set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
    set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
    set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
    # end

    # Reset button
    set_property PACKAGE_PIN T18 [get_ports {reset}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
