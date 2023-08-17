`timescale 1ns/1ps // Specify the timescale

module fulladder(a, b, cin, sum, cout);
  input a, b, cin;
  output sum, cout;
  assign sum = a ^ b ^ cin; // (A XOR B) XOR Cin
  assign cout = (a & b) | (a & cin) | (b & cin); // (A AND B) OR (A AND Cin) OR (B AND Cin)
endmodule
