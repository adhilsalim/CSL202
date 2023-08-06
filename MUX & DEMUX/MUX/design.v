module mux_4_2(y, d0, d1, d2, d3, s1, s0);
  output y;         // Output y (output of the MUX)
  input d0, d1, d2, d3, s1, s0; // Inputs d0, d1, d2, d3 (data inputs), s1, s0 (select inputs)

  // MUX implementation using Verilog conditional (ternary) operator
  assign y = (~s1 & ~s0 & d0) | (~s1 & s0 & d1) | (s1 & ~s0 & d2) | (s1 & s0 & d3);
endmodule
