# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Thu Sep 10 19:15:15 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design bit4_ca

create_clock -name "vclk" -period 10.0 -waveform {0.0 5.0} 
set_load -pin_load 0.05 [get_ports {Sum[3]}]
set_load -pin_load 0.05 [get_ports {Sum[2]}]
set_load -pin_load 0.05 [get_ports {Sum[1]}]
set_load -pin_load 0.05 [get_ports {Sum[0]}]
set_load -pin_load 0.05 [get_ports Cout]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {A[3]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {A[2]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {A[1]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {A[0]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {B[3]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {B[2]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {B[1]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {B[0]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports Cin]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {Sum[3]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {Sum[2]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {Sum[1]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {Sum[0]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports Cout]
set_input_transition 0.5 [get_ports {A[3]}]
set_input_transition 0.5 [get_ports {A[2]}]
set_input_transition 0.5 [get_ports {A[1]}]
set_input_transition 0.5 [get_ports {A[0]}]
set_input_transition 0.5 [get_ports {B[3]}]
set_input_transition 0.5 [get_ports {B[2]}]
set_input_transition 0.5 [get_ports {B[1]}]
set_input_transition 0.5 [get_ports {B[0]}]
set_input_transition 0.5 [get_ports Cin]
set_wire_load_mode "enclosed"
