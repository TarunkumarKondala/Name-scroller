module scrolling_message2(clk,reset,seg2,an);
input clk,reset;
output [6:0] seg2;
output reg [3:0]an;
wire slow_clock_1Hz,slow_clock_100Hz;
reg[2:0]scroll;
reg [3:0]first,second,third,fourth;
reg[3:0]D;
reg [1:0] count;

slow_clock_100HZ U0(clk,slow_clock_100Hz);
slow_clock_1HZ U1(clk,slow_clock_1Hz);
always @(posedge slow_clock_1Hz , posedge reset)
begin
if(reset)
scroll<=0;
else if(scroll==7)
scroll<=1;
else
scroll<=scroll+1;
end

always@(posedge slow_clock_1Hz)
begin
case(scroll)
0:
begin
fourth=2;
third=0;
second=1;
first=0;
end
1:
begin
fourth=0;
third=1;
second=0;
first=2;
end
2:
begin
fourth=1;
third=0;
second=2;
first=0;
end
3:
begin
fourth=0;
third=2;
second=0;
first=1;
end
4:
begin
fourth=2;
third=0;
second=1;
first=0;
end

endcase
end

always @(posedge slow_clock_100Hz,posedge reset)
begin
if(reset)
count<=0;
else
count<=count+1;
case(count)
0:begin
D=first;
an=4'b1110;
end
1:begin
D=second;
an=4'b1101;
end
2:begin
D=third;
an=4'b1011;
end
3:begin
D=fourth;
an=4'b0111;
end
endcase

end

BCD_display2 u3(D,seg2);


endmodule


