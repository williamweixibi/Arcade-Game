
module PS2_Demo (
	// Inputs
	CLOCK_50,
	KEY,

	// Bidirectionals
	PS2_CLK,
	PS2_DAT,
	
	// Outputs
	HEX2,
	HEX3,
	out
);
input				CLOCK_50;
input		[3:0]	KEY;
inout				PS2_CLK;
inout				PS2_DAT;
output		[6:0]	HEX2;
output		[6:0]	HEX3;
wire		[7:0]	ps2_key_data;
output    [7:0] out;
wire				ps2_key_pressed;
wire           command_was_sent;
wire [31:0] count;
reg			[7:0]	last_data_received;
reg            pressed;
reg reset, enable;

display one((last_data_received[3:0]), HEX2);
display two((last_data_received[7:4]), HEX3);

parameter wait0 = 2'b00, exhibit = 2'b01, delay = 2'b10;
reg [1:0] current, nextkeyboard;
always @ (*)
	begin
		case (current)
			wait0:
				if (ps2_key_pressed == 1'b1)
					nextkeyboard = exhibit;
				else
					nextkeyboard = wait0;
			delay:
					if (count > 24'b011110100001001000000)
					nextkeyboard = wait0;
				else
					nextkeyboard = delay;		
			exhibit:
				if (ps2_key_data != last_data_received)
					nextkeyboard = delay;
				else
					nextkeyboard = exhibit;
					
			default:
				nextkeyboard = wait0;
		endcase
	end
always @ (posedge CLOCK_50)
	begin
		if (KEY[0] == 0)
			current = wait0;
		else
			current = nextkeyboard;
	end
always @ (*)
	begin
		case(current)
			wait0:
				begin
				pressed = 0;
				enable = 0;
				reset = 1;
				end
			delay:
				begin
				pressed = 0;
				enable = 1;
				reset = 0;
				end
			exhibit:
				begin
				pressed = 1;
				enable = 0;
				reset = 0;
				end
			
			default:
				begin
				pressed = 0;
				enable = 0;
				reset = 1;
				end
		endcase
	end

/*****************************************************************************
 *                             Sequential Logic                              *
 *****************************************************************************/

always @(posedge CLOCK_50)
begin
	if (KEY[0] == 1'b0)
		begin
			last_data_received <= 8'h00;
		end
	else if (ps2_key_pressed == 1'b1)
		begin
			last_data_received <= ps2_key_data;
		end
end

assign out = (pressed == 0) ? 0 : last_data_received;
counterkeyboard counter(CLOCK_50, enable, reset, count);


/*****************************************************************************
 *                            Combinational Logic                            *
 *****************************************************************************/


/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/

PS2_Controller PS2 (
	// Inputs
	.CLOCK_50				(CLOCK_50),
	.reset				(~KEY[0]),

	// Bidirectionals
	.PS2_CLK			(PS2_CLK),
 	.PS2_DAT			(PS2_DAT),

	// Outputs
	.received_data		(ps2_key_data),
	.received_data_en	(ps2_key_pressed),
	.command_was_sent (command_was_sent)
);



endmodule

module display(input[3:0] SW, output[6:0] HEX2);
		assign HEX2[0] = (~SW[3]&~SW[2]&~SW[1]&SW[0])|(~SW[3]&SW[2]&~SW[1]&~SW[0])|(SW[3]&~SW[2]&SW[1]&SW[0])|(SW[3]&SW[2]&~SW[1]&SW[0]);  
		assign HEX2[1] = (~SW[3]&SW[2]&~SW[1]&SW[0])|(~SW[3]&SW[2]&SW[1]&~SW[0])|(SW[3]&~SW[2]&SW[1]&SW[0])|(SW[3]&SW[2]&~SW[1]&~SW[0])|(SW[3]&SW[2]&SW[1]&~SW[0])|(SW[3]&SW[2]&SW[1]&SW[0]); 
		assign HEX2[2] = (~SW[3]&~SW[2]&SW[1]&~SW[0])|(SW[3]&SW[2]&~SW[1]&~SW[0])|(SW[3]&SW[2]&SW[1]&~SW[0])|(SW[3]&SW[2]&SW[1]&SW[0]); 
		assign HEX2[3] = (~SW[3]&~SW[2]&~SW[1]&SW[0])|(~SW[3]&SW[2]&~SW[1]&~SW[0])|(~SW[3]&SW[2]&SW[1]&SW[0])|(SW[3]&~SW[2]&~SW[1]&SW[0])|(SW[3]&~SW[2]&SW[1]&~SW[0])|(SW[3]&SW[2]&SW[1]&SW[0]);
		assign HEX2[4] = (~SW[3]&~SW[2]&~SW[1]&SW[0])| (~SW[3]&~SW[2]&SW[1]&SW[0])|(~SW[3]&SW[2]&~SW[1]&~SW[0])|(~SW[3]&SW[2]&~SW[1]&SW[0])|(~SW[3]&SW[2]&SW[1]&SW[0])|(SW[3]&~SW[2]&~SW[1]&SW[0]);
		assign HEX2[5] = (~SW[3]&~SW[2]&~SW[1]&SW[0])|(~SW[3]&~SW[2]&SW[1]&~SW[0])|(~SW[3]&~SW[2]&SW[1]&SW[0])|(~SW[3]&SW[2]&SW[1]&SW[0])|(SW[3]&SW[2]&~SW[1]&SW[0]);
		assign HEX2[6] = (~SW[3]&~SW[2]&~SW[1]&~SW[0])|(~SW[3]&~SW[2]&~SW[1]&SW[0])|(~SW[3]&SW[2]&SW[1]&SW[0])|(SW[3]&SW[2]&~SW[1]&~SW[0]);  
endmodule

module counterkeyboard(clock, enable, reset, out);
	input clock, enable, reset;
	output reg [31:0] out;
	always @ (posedge clock)
		begin
			if (reset == 1)
				out <= 0;
			else if (enable == 1)
				out <= out + 1;
		end
endmodule
