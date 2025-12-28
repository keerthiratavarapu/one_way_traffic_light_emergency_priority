`timescale 1ns / 1ps

module traffic_light_emergency(
input clk,input reset,input emergency,
output reg  green,output reg yellow,output reg red
    );
	 reg[25:0]clk_div;
	 wire slow_clk;
	 always@(posedge clk or posedge reset)
	 begin
	 if(reset)
	 clk_div<=0;
	 else
	 clk_div<=clk_div+1;
	 end
	 assign slow_clk=clk_div[25];
	 parameter G=2'b00,
	 Y=2'b01,
	 R=2'b10;
	 reg[1:0] state,next_state;
	 reg[3:0]count;
	 always@(posedge slow_clk or posedge reset)
	 begin
	 if(reset)
	 begin
	 state<=G;
	 count<=0;
	 end 
	 else begin
	 if(state!=next_state)
	 count<=0;
	 else
	 count<=count+1;
	 state<=next_state;
	 end
	 end
	 always@(*)
	 begin
	 if(emergency)
	 next_state=G;
	 else begin
	 case(state)
	 G:next_state=(count==5)?Y:G;
	 Y:next_state=(count==2)?R:Y;
	 R:next_state=(count==5)?G:R;
	 default:next_state=G;
	 endcase
	 end
	 end
	 always@(*)
	 begin
	 green=0;
	 yellow=0;
	 red=0;
	 case(state)
	 G:green=1;
	 Y:yellow=1;
	 R:red=1;
	 endcase
	 end


endmodule
