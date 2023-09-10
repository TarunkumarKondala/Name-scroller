module top_module(clk,reset,switch,seg,an);
input clk,reset;
input [1:0]switch;
output reg[6:0]seg;
output reg [3:0]an;

wire[6:0]seg1;
wire[3:0]an1;

wire[6:0]seg2;
wire[3:0]an2;

wire[6:0]seg0;
wire[3:0]an0;

scrolling_message1 s1(clk,reset,seg1,an1);
scrolling_message2 s2(clk,reset,seg2,an2);
scrolling_message0 s(clk,reset,seg0,an0);

always@(posedge clk)
begin
case(switch)
2'b01:begin
seg<=seg1;
an<=an1;
end
2'b10:begin
seg<=seg2;
an<=an2;
end
default:begin
seg<=seg0;
an<=an0;
end
endcase
end
endmodule

