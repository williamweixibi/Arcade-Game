module keyboardtosignalassignment(indata,lefthit,righthit,uphit,downhit);
	input [7:0] indata;
	output reg lefthit, righthit, uphit, downhit;
	always@(*)
		begin
			case(indata)
				8'h1C: //Key A left lane hit
					begin
						lefthit=1;
						uphit=0;
						righthit=0;
						downhit=0;
					end
				8'h23: //Key D right lane hit
					begin
						lefthit=0;
						uphit=1;
						righthit=0;
						downhit=0;
					end
				8'h1D: //Key W upper lane hit
					begin
						lefthit=0;
						uphit=0;
						righthit=1;
						downhit=0;
					end
				8'h1B: //Key S down lane hit
					begin
						lefthit=0;
						uphit=0;
						righthit=0;
						downhit=1;
					end
				default:
					begin
						lefthit=0;
						uphit=0;
						righthit=0;
						downhit=0;
					end
			endcase
		end
endmodule

