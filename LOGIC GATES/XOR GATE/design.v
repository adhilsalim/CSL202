`timescale 1ns/1ps // Specify the timescale

module xor1(c, a, b);
  output c; // Output port c
  input a, b; // Input ports a and b
  assign c = (~a & b) | (a & ~b); // XOR gate implementation using AND, OR, and NOT gates
endmodule
