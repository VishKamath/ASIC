import inr_pkg::*;
module phase_folder(
input logic clk,
input logic rst_in,
input logic valid_in,
input logic signed [15:0] angle_in,
output logic valid_out_folded,
output logic signed [15:0] phase_out_folded
);
logic signed [ACT_WIDTH-1:0] folded_angle;

always_comb begin
folded_angle=angle_in <<< 3;
end

always_ff @(posedge clk or negedge rst_in) begin 
if (!rst_in) begin 
	valid_out_folded <=1'b0;
	phase_out_folded<='0;
end
else begin
	valid_out_folded<=valid_in;
	phase_out_folded <= folded_angle;
end

end
endmodule
