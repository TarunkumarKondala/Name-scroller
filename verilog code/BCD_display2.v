module BCD_display2(Y,disp);
input [3:0]Y;
output reg [6:0]disp;
always @(Y)
begin
case(Y)
0:disp=7'b0110000;   // e
1:disp=7'b0110001;   //c
2:disp=7'b1111110;   //-
endcase
end
endmodule
