`timescale 1ns/1ps // Specify the timescale

module or1(c, a, b);
  output c; // Output port c
  input a, b; // Input ports a and b
  assign c = a | b; // OR gate implementation: c is the logical OR of a and b
  // you can also use, assign c = OR(a, b);
endmodule
