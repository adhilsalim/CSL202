`timescale 1ns/1ps

module dffp(q, d, clk, rst);
  input d, clk, rst;
  output reg q;
  
  always @(negedge clk)
    case (rst)
      1'b1: q = 1'b0; // Reset: q = 0
      1'b0: q = d;    // No Reset: q = d
    endcase
endmodule