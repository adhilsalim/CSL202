`timescale 1ns/1ps // Specify the timescale

module nand1(c, a, b);
  output c; // Output port c
  input a, b; // Input ports a and b
  assign c = ~(a & b); // NAND gate implementation: c is the logical NAND of a and b
endmodule
