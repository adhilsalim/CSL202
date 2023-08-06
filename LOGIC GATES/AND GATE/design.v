`timescale 1ns/1ps // Specify the timescale

module and1(c, a, b);
  output c; // Output port c
  input a, b; // Input ports a and b
  assign c = a & b; // AND gate implementation: c is the logical AND of a and b
endmodule
