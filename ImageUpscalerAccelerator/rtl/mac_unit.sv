import inr_pkg::*;
module mac_unit(
input logic clk,
input logic rst_in,
input logic valid_in,
input logic clr_acc,
input logic signed [15:0] a_in,
input logic signed [15:0] w_in,
input logic signed [15:0] bias_in,
output logic valid_out,
output logic ovf_flag,
output logic signed [15:0] acc_out
);
logic signed [31:0] mult_out;
logic signed [32:0] add_out;


always_comb begin 
	mult_out = a_in * w_in;
	mult_out = mult_out>>>12;
	if (clr_acc==1) begin
		add_out = mult_out + bias_in;
	end
	else begin 
		add_out = mult_out + acc_out; 
	end
end

always_ff @(posedge clk or negedge rst_in) begin
	if (!rst_in) begin 
		valid_out <= 1'b0;
		acc_out <= 16'sh0;
		ovf_flag <= 1'b0;
	end
	else begin 
		valid_out <= valid_in;
		if  (valid_in) begin 
			
			if (add_out>33'sd32767) begin 
				ovf_flag <= 1;
				acc_out <= 16'sh7FFF;
			end
			else if (add_out< -33'sd32768) begin 
				ovf_flag <= 1;
				acc_out <= 16'sh8000;
			end
			else begin
				ovf_flag <= 0;
				acc_out <= add_out[15:0];
			end
			
		end
	end
end

endmodule
