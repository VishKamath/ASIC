import inr_pkg::*;
module siren_scaler (
input logic clk,
input logic rst_in,
input logic valid_in,
input logic signed [15:0] data_in,
output logic valid_out,
output logic signed [ACT_WIDTH-1:0] data_out
);
logic signed [ACT_WIDTH-1:0] shift_a;
logic signed [ACT_WIDTH-1:0] shift_b;
logic signed [ACT_WIDTH-1:0] sub_result;

always_comb begin 
	shift_a=data_in <<< 5;
	shift_b=data_in <<< 1;
	sub_result = shift_a - shift_b;
end
always_ff @(posedge clk or negedge rst_in) begin 
	if (!rst_in) begin 
		valid_out <= 0;
		data_out <= 0;
	end
	else begin 
		valid_out <= valid_in;
		if (valid_in) begin 
			data_out <= sub_result;
		end
	end
end

endmodule
