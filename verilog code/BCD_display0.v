module BCD_display0(Y,disp);
input [3:0]Y;
output reg [6:0]disp;
always @(Y)
begin
case(Y)
0:disp=7'b1111110;   //-
1:disp=7'b1001000;    //h
2:disp=7'b1001111;    //i
endcase
end
endmodule
