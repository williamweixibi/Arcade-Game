`timescale 1ns / 1ns

module Final_Compilation(CLOCK_50,SW,KEY,LEDR,HEX0,HEX1,HEX4,HEX5,
			leftlane1, leftlane2, leftlane3, rightlane1, rightlane2, rightlane3, toplane1, toplane2, toplane3, blane1, blane2, blane3,PS2_CLK,PS2_DAT,
			lefthit,righthit,uphit,downhit);
	//activate all switches and keys
	input lefthit,righthit,uphit,downhit;
	input [9:0] SW;
	input [3:0] KEY;
	input CLOCK_50;
	inout PS2_CLK,PS2_DAT;
	//test output for FSM
	output [9:0]LEDR;
	//output for Register
	output [0:6] HEX0, HEX1, HEX4, HEX5;
	
	output leftlane1, leftlane2, leftlane3, rightlane1, rightlane2, rightlane3, toplane1, toplane2, toplane3, blane1, blane2, blane3;
	wire wire1, wire2, wire3, wire4, wire5;
	wire dummy;
	wire h0, h1, h2, h3, h4, h5, h6, h7;
	wire [3:0] hout;
	wire e;
	
	wire[27:0]caseout;
	
	choosespeed choose1 (SW[5:4], caseout);
	
	wire newclockspeed;
	
	adjustedclockout adjust1(CLOCK_50,caseout,newclockspeed);
	
	wire [3:0]osignal;
	
	
	
	

	INPUT_FSM D(CLOCK_50,SW[3:0], osignal);
	//lane1
	shift s1(newclockspeed, osignal[0], wire1, LEDR[0], leftlane1, leftlane2, leftlane3);
	//lane
	shift s2(newclockspeed, osignal[1], wire2, LEDR[0], rightlane1, rightlane2, rightlane3);
	//lane3
	shift s3(newclockspeed, osignal[2], wire3, LEDR[0], toplane1, toplane2, toplane3);
	//lane 4
	shift s4(newclockspeed, osignal[3], wire4, LEDR[0], blane1, blane2, blane3);
	
	andor u1(wire1, ~lefthit, wire2, ~uphit, wire3, ~righthit, wire4, ~downhit, wire5);
	
//	wire pulse;
//	rateDivider2 RD(CLOCK_50, pulse, KEY[0]);
	
	flipflop f1(wire5, newclockspeed, LEDR[0], SW[7], LEDR[0]);
	
	assign e = (wire1 | wire2 | wire3 | wire4) & (lefthit | uphit | righthit | downhit);
	
//	counter count1 (hout, e, newclockspeed, SW[7]);

	wire [3:0]h2out;
	wire outpulse;
	
	counter c(hout, e, newclockspeed, SW[7],outpulse);
	ctrforsecond y(outpulse,h2out,SW[7]); 
	HEX_decoder i7(hout, HEX0);
	HEX_decoder i8(h2out, HEX1);
	
//	//lane1
//	HEX_decoder i1(h0,HEX5);
//	HEX_decoder i2(h1,HEX4);
//	HEX_decoder i3(wire1,HEX3);
//	//lane2
//	HEX_decoder i4(h2,HEX2);
//	HEX_decoder i5(h3,HEX1);
//	HEX_decoder i6(wire2,dummy);
//	//lane3
//	assign LEDR[9] = h4;
//	assign LEDR[8] = h5;
//	assign LEDR[7] = wire3;		
//	//lane 4
//	assign LEDR[6] = h6;
//	assign LEDR[5] = h7;
//	assign LEDR[4] = wire4;
	
	//HEX_decoder i7(hout, HEX0);
	
endmodule



module flipflop(D, CLK, Q, Reset_b, enable);
	input  D;
	input CLK, Reset_b, enable;
	output reg  Q;
	always @(posedge CLK)
		begin
			if (Reset_b)
				Q <= 1'b0;

			else if (~enable)
				Q <= D;
		end
endmodule



module andor(A, B, C, D, E, F, G, H, out);

	input A, B, C, D, E, F, G, H;
	output out;

	assign out = (A&B) | (C&D) | (E&F) | (G&H);

endmodule


module shift (C, SI, SO, reset, zero, one, two); 
	input C, SI, reset; 
	output SO; 
	output zero, one, two;


	reg [2:0] tmp; 
 
  always @(posedge C)

		if (reset)
			begin
				tmp <= tmp << 1; 
				tmp[0] <= 1'b0;
			end
		else
			begin
				tmp <= tmp << 1; 
				tmp[0] <= SI;
			end
	 assign zero = tmp[0];
	 assign one  = tmp[1];
	 assign SO  = tmp[2];
	 assign two = tmp[2];
	 
endmodule 

//module counter(out, enable, clk, reset);
//
//	output [3:0] out;
//
//	input enable, clk, reset;
//
//	reg [3:0] out;
//
//	always @(posedge clk)
//	if (reset) begin
//	  out <= 4'b0 ;
//	end else if (enable) begin
//	  out <= out + 1;
//	end
//
//endmodule

module counter(out, enable, clk, reset, outsignal);

	output [3:0] out;
	output reg outsignal;
	input enable, clk, reset;
	reg [3:0] out;
	always @(posedge clk)
		if (reset) 
			begin
				out <= 4'b0;
				outsignal<=1;
			end 
		else if (enable) 
			begin
				out <= out + 1;
					if(out==9)
						begin
							outsignal<=1;
							out<=0;
						end
					else
						begin
							outsignal<=0;
						end
			end
		else
			begin
				out<=out;
			end
endmodule

module ctrforsecond(Enable,Q,reset); 
	input Enable;
	input reset;
	output [3:0]Q;
	reg [3:0] Q;
	always@(posedge Enable)
		begin
			if(reset)
				begin
					Q<=0;
				end
			else if(Enable)
				begin
					Q <= Q + 1;
				end
			else
				begin
					Q <= Q;
				end
		end
endmodule

module choosespeed(selectfrequency, caseout);
	input [1:0]selectfrequency;
	output reg [27:0] caseout; //maximum band is 28-bits wide
	always @ (*)
		case(selectfrequency)
			0: caseout <= 100000000 ;//2 seconds   input:00 
			1: caseout <= 50000000 ; //1 second    input:01
			2: caseout <= 25000000 ; //0.5 second  input:10
			3: caseout <= 12500000 ; //0.25 second input;11
		endcase
endmodule

module adjustedclockout(clock,insert,Enable);
	input clock;
	input [27:0]insert; //50 million hertz is 28 bits wide
	output Enable; 
	
	reg [27:0]cout; //output must also be 28 bits wide
	
	always@(posedge clock)
		begin
			if (!cout) //if cout has no data, forward it in
				cout<=insert;
			else //if it does have data, at every clock cycle it begins to substract
				cout <= cout-1;
		end
	assign Enable = (cout==0)?1:0; //enable checks everytime whether cout is zero, generate an enable pulse when cout is 0
endmodule

//state input for loading in obstacles
module INPUT_FSM(clock,SW,osignal);
	input clock;
	input [3:0] SW;
	wire [3:0] isignal;
	output reg [3:0] osignal;
	//set the signal of the switch to its respective wire bit
	assign isignal[3:0]=SW[3:0];
	//define current and next state
	reg[3:0]y,Y;
	//five parameters that is determined by switch inputs
	parameter [3:0] ZERO=4'b0000, LANE1=4'b0001, LANE2=4'b0010, LANE3=4'b0100, LANE4=4'b1000;
	always@(*)
		begin
			case(y)
				ZERO:
					if(isignal==ZERO) 
							Y=ZERO;
					else if(isignal==LANE1) 
							Y=LANE1;
					else if(isignal==LANE2) 
							Y=LANE2;
					else if(isignal==LANE3) 
							Y=LANE3;
					else if(isignal==LANE4) 
							Y=LANE4;
					else
							Y=ZERO;
				LANE1:
					if(isignal==ZERO) 
					
							Y=ZERO;
					
					else if(isignal==LANE1) 
						
							Y=LANE1;
						
					else if(isignal==LANE2) 
						
							Y=LANE2;
					
					else if(isignal==LANE3) 
						
							Y=LANE3;
						
					else if(isignal==LANE4) 
					
							Y=LANE4;
						
					else
						
							Y=ZERO;
					
				LANE2:
					if(isignal==ZERO) 
					
							Y=ZERO;
						
					else if(isignal==LANE1) 
						
							Y=LANE1;
						
					else if(isignal==LANE2) 
						
							Y=LANE2;
						
					else if(isignal==LANE3) 
					
							Y=LANE3;
					
					else if(isignal==LANE4) 
					
							Y=LANE4;
						
					else
						 
							Y=ZERO;
					
				LANE3:
					if(isignal==ZERO) 
						
							Y=ZERO;
						
					else if(isignal==LANE1) 
						
							Y=LANE1;
						
					else if(isignal==LANE2) 
						
							Y=LANE2;
						
					else if(isignal==LANE3) 
						
							Y=LANE3;
					
					else if(isignal==LANE4) 
					
							Y=LANE4;
					
					else
					
							Y=ZERO;
					
				LANE4:
					if(isignal==ZERO) 
						
							Y=ZERO;
					
					else if(isignal==LANE1) 
						
							Y=LANE1;
						
					else if(isignal==LANE2) 
						
							Y=LANE2;
						
					else if(isignal==LANE3) 
						
							Y=LANE3;
						
					else if(isignal==LANE4) 
						
							Y=LANE4;
						
					else
						
							Y=ZERO;
					
			endcase
		end
	
	always@(posedge clock)
	begin
			y <= Y;
			osignal=y;
	end

endmodule



//HEX DISPLAY MODULE UP TO 16

module HEX_decoder(SW,HEX0);

	input[3:0] SW;
	output reg [0:6] HEX0;
	
		always@(*)
			begin
				case(SW)
					0: HEX0 = 7'b0000001;
					1: HEX0 = 7'b1001111;
					2: HEX0 = 7'b0010010;
					3: HEX0 = 7'b0000110;
					4: HEX0 = 7'b1001100;
					5: HEX0 = 7'b0100100;
					6: HEX0 = 7'b0100000;
					7: HEX0 = 7'b0001111;
					8: HEX0 = 7'b0000000;
					9: HEX0 = 7'b0000100;
					10: HEX0 = 7'b0001000;
					11: HEX0 = 7'b1100000;
					12: HEX0 = 7'b0110001;
					13: HEX0 = 7'b1000010;
					14: HEX0 = 7'b0110000;
					15: HEX0 = 7'b0111000;
					default:HEX0 = 7'b0000000;
				endcase
			end
endmodule

module rateDivider2 (CLK, pulseOut, reset);

	input CLK, reset;
	output pulseOut;
	reg [27:0] Q;
	
	always @ (posedge CLK)
		begin
			 if (reset == 0)
				Q <= 12600000;
			 else if (Q == 0)
				Q <= (12600000) ;
			else 
				Q <= Q - 1;
		end
	
	assign pulseOut = (Q == 0)?1:0;

	//20'b11001011011100110101
endmodule
