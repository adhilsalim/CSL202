`timescale 1ns/1ps // Specify the timescale

module fulladder(a, b, cin, sum, cout);
  input a, b, cin;
  output sum, cout;
  assign sum = a ^ b ^ cin; // XOR operation for sum
  assign cout = (a & b) | (a & cin) | (b & cin); // OR operation for carry out
endmodule
