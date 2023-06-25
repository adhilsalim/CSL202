`timescale 1ns/1ps
module xortest;
reg a,b;
wire c;
xor1 X1(a,b,c);
initial begin
a = 1'b0; b = 1'b0;
#1
a = 1'b0; b = 1'b1;
#1
a = 1'b1; b = 1'b0;
#1
a = 1'b1; b = 1'b1;
end
endmodule
