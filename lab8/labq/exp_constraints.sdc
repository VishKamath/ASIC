create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]

set_clock_uncertainty 0.200 [get_clocks clk]
set_clock_transition 0.100 [get_clocks clk]

set_false_path -from [get_ports rst_in]

set_input_delay -clock clk -max 2.000 [get_ports {A[*] B[*] C[*] D[*]}]
set_input_delay -clock clk -min 0.500 [get_ports {A[*] B[*] C[*] D[*]}]
set_driving_cell -lib_cell BUFX2 -pin Y [get_ports {A[*] B[*] C[*] D[*] rst_in}]

set_output_delay -clock clk -max 2.000 [get_ports {y[*]}]
set_output_delay -clock clk -min 0.500 [get_ports {y[*]}]
set_load 0.050 [get_ports {y[*]}]
