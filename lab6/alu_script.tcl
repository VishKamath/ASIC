	
set DESIGN_NAME "seq_alu" 


set_db library /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib

read_hdl ${DESIGN_NAME}.v
elaborate $DESIGN_NAME


if {$DESIGN_NAME == "seq_alu"} {
    # Virtual clock for purely combinational RCA design
    create_clock -name vclk -period 10.0
    set clk_port "vclk"
} else {
    
    create_clock -name clk -period 10.0 [get_ports clk]
    set clk_port "clk"
}


set_input_delay 1.0 -clock $clk_port [all_inputs]
set_output_delay 1.0 -clock $clk_port [all_outputs]
set_input_transition 0.5 [all_inputs]
set_load 0.05 [all_outputs]




syn_generic
report_timing > reports/${DESIGN_NAME}_generic_timing.rpt
report_area   > reports/${DESIGN_NAME}_generic_area.rpt
report_power  > reports/${DESIGN_NAME}_generic_power.rpt
report_qor    > reports/${DESIGN_NAME}_generic_qor.rpt


syn_map
report_timing > reports/${DESIGN_NAME}_mapped_timing.rpt
report_area   > reports/${DESIGN_NAME}_mapped_area.rpt
report_power  > reports/${DESIGN_NAME}_mapped_power.rpt
report_qor    > reports/${DESIGN_NAME}_mapped_qor.rpt


syn_opt
report_timing > reports/${DESIGN_NAME}_optimized_timing.rpt
report_area   > reports/${DESIGN_NAME}_optimized_area.rpt
report_power  > reports/${DESIGN_NAME}_optimized_power.rpt
report_qor    > reports/${DESIGN_NAME}_optimized_qor.rpt


write_hdl > ${DESIGN_NAME}_netlist.v

gui_show
write_sdc > ${DESIGN_NAME}_constraints.sdc
