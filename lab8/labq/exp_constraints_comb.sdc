
create_clock -name "vclk" -period 10.0


set_clock_uncertainty 0.2 [get_clocks vclk]
set_clock_transition 0.1  [get_clocks vclk]


set_input_delay -clock vclk -max 2.0 [get_ports {A[*] B[*] C[*] D[*]}]
set_input_delay -clock vclk -min 0.5 [get_ports {A[*] B[*] C[*] D[*]}]


set_output_delay -clock vclk -max 2.0 [get_ports {y[*]}]
set_output_delay -clock vclk -min 0.5 [get_ports {y[*]}]


set_driving_cell -lib_cell BUFX2 -pin Y [get_ports {A[*] B[*] C[*] D[*]}]
set_load 0.050 [get_ports {y[*]}]
