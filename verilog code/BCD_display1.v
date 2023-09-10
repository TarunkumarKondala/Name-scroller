module BCD_display1(Y,disp);
input [3:0]Y;
output reg [6:0]disp;
always @(Y)
begin
case(Y)
0:disp=7'b1111001;   // i
1:disp=7'b1110000;   //t
2:disp=7'b0100100;   //s
3:disp=7'b1111110;   //-
endcase
end
endmodule
