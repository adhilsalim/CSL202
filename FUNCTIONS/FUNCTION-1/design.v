`timescale 1ns/1ps // Specify the timescale

module fun(A, B, C, F);
  input A, B, C; // Input ports A, B, and C
  output F;      // Output port F

  // Function F = a'b'c + abc' + a'bc' + abc
  assign F = ((~A & ~B & ~C) | (A & B & ~C) |
             (~A & B & ~C) | (A & B & C));
endmodule
