// Part 2 skeleton

module fill
	(
		CLOCK_50,						//	On Board 50 MHz
		// Your inputs and outputs here
		// The ports below are for the VGA output.  Do not change.
		VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK_N,						//	VGA BLANK
		VGA_SYNC_N,						//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B,   						//	VGA Blue[9:0]
		KEY,
		SW,
		LEDR,
		HEX0,
		HEX1,
		HEX2,
		HEX3,
		HEX4,
		HEX5,
		PS2_CLK,
		PS2_DAT
	);
	inout PS2_CLK,PS2_DAT;
	input			CLOCK_50;				//	50 MHz
	input   [9:0]   SW;
	input   [3:0]   KEY;
	output [9:0]LEDR;
	output [0:6] HEX0, HEX1, HEX4, HEX5;
	output [6:0] HEX2, HEX3;
	// Declare your inputs and outputs here
	// Do not change the following outputs
	output			VGA_CLK;   				//	VGA Clock
	output			VGA_HS;					//	VGA H_SYNC
	output			VGA_VS;					//	VGA V_SYNC
	output			VGA_BLANK_N;				//	VGA BLANK
	output			VGA_SYNC_N;				//	VGA SYNC
	output	[9:0]	VGA_R;   				//	VGA Red[9:0]
	output	[9:0]	VGA_G;	 				//	VGA Green[9:0]
	output	[9:0]	VGA_B;   				//	VGA Blue[9:0]
	
	wire resetn;
	assign resetn = 1;
	
	// Create the colour, x, y and writeEn wires that are inputs to the controller.

	wire [2:0] colour;
	wire [8:0] x;
	wire [7:0] y;
	wire writeEn;

	// Create an Instance of a VGA controller - there can be only one!
	// Define the number of colours as well as the initial background
	// image file (.MIF) for the controller.
	vga_adapter VGA(
			.resetn(resetn),
			.clock(CLOCK_50),
			.colour(colour),
			.x(x),
			.y(y),
			.plot(writeEn),
			/* Signals for the DAC to drive the monitor. */
			.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK_N),
			.VGA_SYNC(VGA_SYNC_N),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "320x240";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;
		defparam VGA.BACKGROUND_IMAGE = "Grid.mif";
			
	// Put your code here. Your code should produce signals x,y,colour and writeEn
	// for the VGA controller, in addition to any other functionality your design may require.
	
	wire [12:0] out;
	
	//read(SW[9], CLOCK_50, out);
	//Sprites(out, CLOCK_50, 0, 0, out2);
	
	//assign writeEn = SW[9];
	
	wire [7:0] w1, w2, w3, w4;
	
	wire [8:0] xs;
	wire [7:0] ys, xi, yi, ximax, yimax;
	wire e, l, r;
	wire pulse;
	
	wire llane1, llane2, llane3, rlane1, rlane2, rlane3, tlane1, tlane2, tlane3, blane1, blane2, blane3;
	
	wire [7:0] out1;
	wire lefthit, righthit, uphit, downhit;
	PS2_Demo AA(CLOCK_50,KEY[0],PS2_CLK,PS2_DAT,HEX2,HEX3,out1);
	keyboardtosignalassignment BB(out1,lefthit,righthit,uphit,downhit);
	
	Final_Compilation data(CLOCK_50, SW[9:0], KEY[3:0], LEDR[9:0],
									HEX0[0:6], HEX1[0:6],HEX4[0:0], HEX5[0:6], 
									llane1, llane2, llane3, rlane1, rlane2, rlane3, tlane1, tlane2, tlane3, blane1, blane2, blane3,PS2_CLK,PS2_DAT,
									lefthit,righthit,uphit,downhit);
	rateDivider RD(CLOCK_50, pulse, 1);
	FSM f1 (SW[9], 0, 
			  llane1, llane2, llane3,
			  rlane1, rlane2, rlane3,
			  tlane1, tlane2, tlane3,
			  blane1, blane2, blane3,
			  pulse, xs, ys, xi, yi, e, l, r, writeEn, ximax, yimax, LEDR[0]);
	
	counterVGA c1(CLOCK_50, xs, ys, xi, yi, x, y, w3, w4, out, e, l, r, ximax, yimax);
	
	Sprites s1(out, CLOCK_50, 0, 0, colour);
	
endmodule

module counterVGA(clk, xs, ys, xi, yi, xso, yso, xio, yio, memout, enable, load, reset, ximax, yimax);

input [7:0] ys, xi, yi, ximax, yimax;
input [8:0] xs;

output reg [7:0] yso, xio, yio;
output reg [8:0] xso;

output reg [12:0] memout;

input enable, load, clk, reset;

always @(posedge clk)
	if (reset) begin
		xso <= 7'b0;
		yso <= 7'b0;
		xio <= 7'b0;
		yio <= 7'b0;
	end else if (load) begin
		xso <= xs;
		yso <= ys;
		xio <= xi;
		yio <= yi;
	end else if (enable) begin
		if (xio < ximax) begin
			xso <= xso + 1;
			xio <= xio + 1;
			if (yio < yimax) begin
				yso <= yso + 1;
				yio <= yio + 1;
			end
			else begin
				yso <= ys;
				yio <= yi;
			end
		end
		
		else begin
			xso <= xs;
			xio <= xi;
			if (yio < yimax) begin
				yso <= yso + 1;
				yio <= yio + 1;
			end
			else begin
				yso <= ys;
				yio <= yi;
			end
		end
		
		memout <= (yio * 129) + xio;
	end

endmodule 

module FSM(enableFSM, resetn,
				grid1, grid2, grid3,
				grid4, grid5, grid6,
				grid7, grid8, grid9,
				grid10, grid11, grid12,
				clock, xs, ys, xi, yi, enable, load, reset, writeout, ximax, yimax, center);

input grid1, grid2, grid3, 
		grid4, grid5, grid6,
		grid7, grid8, grid9,
		grid10, grid11, grid12,
		clock, enableFSM, resetn, center;

output reg [8:0] xs;
output reg [7:0] ys, xi, yi, ximax, yimax;
output reg enable, load, reset, writeout;

parameter RESET = 8'b00000000;

parameter LOAD1 = 8'b00000001, ACCESS1 = 8'b00000010, DRAW1 = 8'b00000011;
parameter LOAD1B = 8'b00000100, ACCESS1B = 8'b00000101, DRAW1B = 8'b00000110;

parameter LOAD2 = 8'b00000111, ACCESS2 = 8'b00001000, DRAW2 = 8'b00001001;
parameter LOAD2B = 8'b00001010, ACCESS2B = 8'b00001011, DRAW2B = 8'b00001100;

parameter LOAD3 = 8'b00010011, ACCESS3 = 8'b00001101, DRAW3 = 8'b00001111;
parameter LOAD3B = 8'b00010000, ACCESS3B = 8'b00010001, DRAW3B = 8'b00010010;

parameter LOAD4 = 8'b1110, ACCESS4 = 8'b10100, DRAW4 = 8'b10101;
parameter LOAD4B = 8'b10110, ACCESS4B = 8'b10111, DRAW4B = 8'b11000;

parameter LOAD5 = 8'b11001, ACCESS5 = 8'b11010, DRAW5 = 8'b11011;
parameter LOAD5B = 8'b11100, ACCESS5B = 8'b11101, DRAW5B = 8'b11110;

parameter LOAD6 = 8'b11111, ACCESS6 = 8'b100000, DRAW6 = 8'b100001;
parameter LOAD6B = 8'b100010, ACCESS6B = 8'b100011, DRAW6B = 8'b100100;

parameter LOAD7 = 8'b100101, ACCESS7 = 8'b100110, DRAW7 = 8'b100111;
parameter LOAD7B = 8'b101000, ACCESS7B = 8'b101001, DRAW7B = 8'b101010;

parameter LOAD8 = 8'b101011, ACCESS8 = 8'b101100, DRAW8 = 8'b101101;
parameter LOAD8B = 8'b101110, ACCESS8B = 8'b101111, DRAW8B = 8'b110000;

parameter LOAD9 = 8'b110001, ACCESS9 = 8'b110010, DRAW9 = 8'b110011;
parameter LOAD9B = 8'b110100, ACCESS9B = 8'b110101, DRAW9B = 8'b110110;

parameter LOAD10 = 8'b110111, ACCESS10 = 8'b111000, DRAW10 = 8'b111001;
parameter LOAD10B = 8'b111010, ACCESS10B = 8'b111011, DRAW10B = 8'b111100;

parameter LOAD11 = 8'b111101, ACCESS11 = 8'b111110, DRAW11 = 8'b111111;
parameter LOAD11B = 8'b1000000, ACCESS11B = 8'b1000001, DRAW11B = 8'b1000010;

parameter LOAD12 = 8'b1000011, ACCESS12 = 8'b1000100, DRAW12 = 8'b1000101;
parameter LOAD12B = 8'b1000110, ACCESS12B = 8'b1000111, DRAW12B = 8'b1001000;

parameter LOADC = 8'b1001001, ACCESSC = 8'b1001010, DRAWC = 8'b1001011;
parameter LOADCB = 8'b1001100, ACCESSCB = 8'b1001101, DRAWCB = 8'b1001110;


reg [7:0] presentstate, nextstate;

always @(*)
	begin
		case(presentstate)
			RESET: begin
				if (!enableFSM)
					nextstate = RESET;
				else if (enableFSM && grid1)
					nextstate = LOAD1;
				else if (enableFSM && ~grid1)
					nextstate = LOAD1B;
				else
					nextstate = RESET;
					end
			LOAD1: begin
				if (enableFSM)
					nextstate = ACCESS1;
				else
					nextstate = RESET;
					end
			ACCESS1: begin
				if (enableFSM)
					nextstate = DRAW1;
				else
					nextstate = RESET;
					end
			DRAW1: begin
				if (enableFSM) begin
					if (grid2)
						nextstate = LOAD2;
					else
						nextstate = LOAD2B;
					end
				else
					nextstate = RESET;
					end
			LOAD1B: begin
				nextstate = ACCESS1B;
				end
			ACCESS1B: begin
				nextstate = DRAW1B;
				end
			DRAW1B: begin
				if (enableFSM) begin
					if (grid2)
						nextstate = LOAD2;
					else
						nextstate = LOAD2B;
					end
				else
					nextstate = RESET;
					end
			LOAD2: begin
				if (enableFSM)
					nextstate = ACCESS2;
				else
					nextstate = RESET;
					end
			ACCESS2: begin
				if (enableFSM)
					nextstate = DRAW2;
				else
					nextstate = RESET;
					end
			DRAW2: begin
				if (enableFSM) begin
					if (grid3)
						nextstate = LOAD3;
					else
						nextstate = LOAD3B;
					end
				else
					nextstate = RESET;
					end
			LOAD2B: begin
				nextstate = ACCESS2B;
				end
			ACCESS2B: begin
				nextstate = DRAW2B;
				end
			DRAW2B: begin
				if (enableFSM) begin
					if (grid3)
						nextstate = LOAD3;
					else
						nextstate = LOAD3B;
					end
				else
					nextstate = RESET;
					end
			LOAD3: begin
				nextstate = ACCESS3;
				end
			ACCESS3: begin
				nextstate = DRAW3;
				end
			DRAW3: begin
				if (enableFSM) begin
					if (grid4)
						nextstate = LOAD4;
					else
						nextstate = LOAD4B;
					end
				else
					nextstate = RESET;
					end
			LOAD3B: begin
				nextstate = ACCESS3B;
				end
			ACCESS3B: begin
				nextstate = DRAW3B;
				end
			DRAW3B: begin
				if (enableFSM) begin
					if (grid4)
						nextstate = LOAD4;
					else
						nextstate = LOAD4B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD4: begin
				nextstate = ACCESS4;
				end
			ACCESS4: begin
				nextstate = DRAW4;
				end
			DRAW4: begin
				if (enableFSM) begin
					if (grid5)
						nextstate = LOAD5;
					else
						nextstate = LOAD5B;
					end
				else
					nextstate = RESET;
					end
			LOAD4B: begin
				nextstate = ACCESS4B;
				end
			ACCESS4B: begin
				nextstate = DRAW4B;
				end
			DRAW4B: begin
				if (enableFSM) begin
					if (grid5)
						nextstate = LOAD5;
					else
						nextstate = LOAD5B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD5: begin
				nextstate = ACCESS5;
				end
			ACCESS5: begin
				nextstate = DRAW5;
				end
			DRAW5: begin
				if (enableFSM) begin
					if (grid6)
						nextstate = LOAD6;
					else
						nextstate = LOAD6B;
					end
				else
					nextstate = RESET;
					end
			LOAD5B: begin
				nextstate = ACCESS5B;
				end
			ACCESS5B: begin
				nextstate = DRAW5B;
				end
			DRAW5B: begin
				if (enableFSM) begin
					if (grid6)
						nextstate = LOAD6;
					else
						nextstate = LOAD6B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD6: begin
				nextstate = ACCESS6;
				end
			ACCESS6: begin
				nextstate = DRAW6;
				end
			DRAW6: begin
				if (enableFSM) begin
					if (grid7)
						nextstate = LOAD7;
					else
						nextstate = LOAD7B;
					end
				else
					nextstate = RESET;
					end
			LOAD6B: begin
				nextstate = ACCESS6B;
				end
			ACCESS6B: begin
				nextstate = DRAW6B;
				end
			DRAW6B: begin
					if (enableFSM) begin
					if (grid7)
						nextstate = LOAD7;
					else
						nextstate = LOAD7B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD7: begin
				nextstate = ACCESS7;
				end
			ACCESS7: begin
				nextstate = DRAW7;
				end
			DRAW7: begin
				if (enableFSM) begin
					if (grid8)
						nextstate = LOAD8;
					else
						nextstate = LOAD8B;
					end
				else
					nextstate = RESET;
					end
			LOAD7B: begin
				nextstate = ACCESS7B;
				end
			ACCESS7B: begin
				nextstate = DRAW7B;
				end
			DRAW7B: begin
				if (enableFSM) begin
					if (grid8)
						nextstate = LOAD8;
					else
						nextstate = LOAD8B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD8: begin
				nextstate = ACCESS8;
				end
			ACCESS8: begin
				nextstate = DRAW8;
				end
			DRAW8: begin
				if (enableFSM) begin
					if (grid9)
						nextstate = LOAD9;
					else
						nextstate = LOAD9B;
					end
				else
					nextstate = RESET;
					end
			LOAD8B: begin
				nextstate = ACCESS8B;
				end
			ACCESS8B: begin
				nextstate = DRAW8B;
				end
			DRAW8B: begin
				if (enableFSM) begin
					if (grid9)
						nextstate = LOAD9;
					else
						nextstate = LOAD9B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD9: begin
				nextstate = ACCESS9;
				end
			ACCESS9: begin
				nextstate = DRAW9;
				end
			DRAW9: begin
				if (enableFSM) begin
					if (grid10)
						nextstate = LOAD10;
					else
						nextstate = LOAD10B;
					end
				else
					nextstate = RESET;
					end
			LOAD9B: begin
				nextstate = ACCESS9B;
				end
			ACCESS9B: begin
				nextstate = DRAW9B;
				end
			DRAW9B: begin
				if (enableFSM) begin
					if (grid10)
						nextstate = LOAD10;
					else
						nextstate = LOAD10B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD10: begin
				nextstate = ACCESS10;
				end
			ACCESS10: begin
				nextstate = DRAW10;
				end
			DRAW10: begin
				if (enableFSM) begin
					if (grid11)
						nextstate = LOAD11;
					else
						nextstate = LOAD11B;
					end
				else
					nextstate = RESET;
					end
			LOAD10B: begin
				nextstate = ACCESS10B;
				end
			ACCESS10B: begin
				nextstate = DRAW10B;
				end
			DRAW10B: begin
				if (enableFSM) begin
					if (grid11)
						nextstate = LOAD11;
					else
						nextstate = LOAD11B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD11: begin
				nextstate = ACCESS11;
				end
			ACCESS11: begin
				nextstate = DRAW11;
				end
			DRAW11: begin
				if (enableFSM) begin
					if (grid12)
						nextstate = LOAD12;
					else
						nextstate = LOAD12B;
					end
				else
					nextstate = RESET;
					end
			LOAD11B: begin
				nextstate = ACCESS11B;
				end
			ACCESS11B: begin
				nextstate = DRAW11B;
				end
			DRAW11B: begin
				if (enableFSM) begin
					if (grid12)
						nextstate = LOAD12;
					else
						nextstate = LOAD12B;
					end
				else
					nextstate = RESET;
					end
					
			LOAD12: begin
				nextstate = ACCESS12;
				end
			ACCESS12: begin
				nextstate = DRAW12;
				end
			DRAW12: begin
//				if (enableFSM) begin
					if (center)
						nextstate = LOADCB;
					else
						nextstate = LOADC;
					end
//				else
//					nextstate = RESET;
//					end
			LOAD12B: begin
				nextstate = ACCESS12B;
				end
			ACCESS12B: begin
				nextstate = DRAW12B;
				end
			DRAW12B: begin
//				if (enableFSM) begin
					if (center)
						nextstate = LOADCB;
					else
						nextstate = LOADC;
					end
//				else
//					nextstate = RESET;
//					end
					
			LOADC: begin
				nextstate = ACCESSC;
				end
			ACCESSC: begin
				nextstate = DRAWC;
				end
			DRAWC: begin
					nextstate = RESET;
					end
			LOADCB: begin
				nextstate = ACCESSCB;
				end
			ACCESSCB: begin
				nextstate = DRAWCB;
				end
			DRAWCB: begin
				nextstate = RESET;
					end
				
			
			default: nextstate = RESET;
		endcase
	end
	
	always @ (posedge clock)
		begin
			if (resetn == 1)
				presentstate <= 3'b000;
			else
				presentstate <= nextstate;
		end
		
	always @ (*)
		begin
			case (presentstate)
			RESET: begin
				xs = 0;
				ys = 0;
				xi = 0;
				yi = 0;
				ximax = 0;
				yimax = 0;
				enable = 0;
				load = 0;
				reset = 1;
				writeout = 0;
			   end
			LOAD1: begin
				xs = 20;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD1B: begin
				xs = 20;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS1: begin
				xs = 20;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS1B: begin
				xs = 20;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW1: begin
				xs = 20;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW1B: begin
				xs = 20;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD2: begin
				xs = 60;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD2B: begin
				xs = 60;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS2: begin
				xs = 60;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS2B: begin
				xs = 60;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW2: begin
				xs = 60;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW2B: begin
				xs = 60;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD3: begin
				xs = 105;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD3B: begin
				xs = 105;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS3: begin
				xs = 105;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS3B: begin
				xs = 105;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW3: begin
				xs = 105;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW3B: begin
				xs = 105;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD4: begin
				xs = 270;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD4B: begin
				xs = 270;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS4: begin
				xs = 270;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS4B: begin
				xs = 270;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW4: begin
				xs = 270;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW4B: begin
				xs = 270;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD5: begin
				xs = 230;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD5B: begin
				xs = 230;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS5: begin
				xs = 230;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS5B: begin
				xs = 230;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW5: begin
				xs = 230;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW5B: begin
				xs = 230;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD6: begin
				xs = 190;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD6B: begin
				xs = 190;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS6: begin
				xs = 190;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS6B: begin
				xs = 190;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW6: begin
				xs = 190;
				ys = 100;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW6B: begin
				xs = 190;
				ys = 100;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD7: begin
				xs = 150;
				ys = 8;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD7B: begin
				xs = 150;
				ys = 8;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS7: begin
				xs = 150;
				ys = 8;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS7B: begin
				xs = 150;
				ys = 8;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW7: begin
				xs = 150;
				ys = 8;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW7B: begin
				xs = 150;
				ys = 8;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD8: begin
				xs = 150;
				ys = 38;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD8B: begin
				xs = 150;
				ys = 38;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS8: begin
				xs = 150;
				ys = 38;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS8B: begin
				xs = 150;
				ys = 38;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW8: begin
				xs = 150;
				ys = 38;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW8B: begin
				xs = 150;
				ys = 38;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD9: begin
				xs = 150;
				ys = 69;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD9B: begin
				xs = 150;
				ys = 69;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS9: begin
				xs = 150;
				ys = 69;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS9B: begin
				xs = 150;
				ys = 69;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW9: begin
				xs = 150;
				ys = 69;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW9B: begin
				xs = 150;
				ys = 69;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD10: begin
				xs = 150;
				ys = 206;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD10B: begin
				xs = 150;
				ys = 206;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS10: begin
				xs = 150;
				ys = 206;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS10B: begin
				xs = 150;
				ys = 206;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW10: begin
				xs = 150;
				ys = 206;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW10B: begin
				xs = 150;
				ys = 206;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD11: begin
				xs = 150;
				ys = 174;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD11B: begin
				xs = 150;
				ys = 174;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS11: begin
				xs = 150;
				ys = 174;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS11B: begin
				xs = 150;
				ys = 174;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW11: begin
				xs = 150;
				ys = 174;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW11B: begin
				xs = 150;
				ys = 174;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			LOAD12: begin
				xs = 150;
				ys = 140;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOAD12B: begin
				xs = 150;
				ys = 140;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESS12: begin
				xs = 150;
				ys = 140;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESS12B: begin
				xs = 150;
				ys = 140;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAW12: begin
				xs = 150;
				ys = 140;
				xi = 25;
				yi = 5;
				ximax = 49;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAW12B: begin
				xs = 150;
				ys = 140;
				xi = 76;
				yi = 5;
				ximax = 100;
				yimax = 28;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
				
			
			LOADC: begin
				xs = 150;
				ys = 98;
				xi = 52;
				yi = 1;
				ximax = 75;
				yimax = 31;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			LOADCB: begin
				xs = 149;
				ys = 98;
				xi = 103;
				yi = 0;
				ximax = 127;
				yimax = 31;
				enable = 0;
				load = 1;
				reset = 0;
				writeout = 0;
				end
			ACCESSC: begin
				xs = 150;
				ys = 98;
				xi = 52;
				yi = 1;
				ximax = 75;
				yimax = 31;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			ACCESSCB: begin
				xs = 149;
				ys = 98;
				xi = 103;
				yi = 0;
				ximax = 127;
				yimax = 31;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 0;
				end
			DRAWC: begin
				xs = 150;
				ys = 98;
				xi = 52;
				yi = 1;
				ximax = 75;
				yimax = 31;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			DRAWCB: begin
				xs = 149;
				ys = 98;
				xi = 103;
				yi = 0;
				ximax = 127;
				yimax = 31;
				enable = 1;
				load = 0;
				reset = 0;
				writeout = 1;
				end
			
			endcase
		end				
endmodule

module rateDivider (CLK, pulseOut, reset);

	input CLK, reset;
	output pulseOut;
	reg [15:0] Q;
	
	always @ (posedge CLK)
		begin
			 if (reset == 0)
				Q <= (16'b110110010000001) ;//16'b10111011100000;//
			 else if (Q == 16'b000000000000000000000000000000)
				Q <= (16'b110110010000001) ;//16'b10111011100000;//(16'b110110010000001) /3) ;
			else 
				Q <= Q - 1;
		end
	
	assign pulseOut = (Q == 20'b0000000000000000000000000000)?1:0;

	//20'b11001011011100110101
endmodule

