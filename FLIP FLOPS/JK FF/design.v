`timescale 1ns/1ps

module jkffp(q, q0, j, k, clk);
  input j, k, q0, clk;
  output reg q;

  always @(negedge clk or j or k or q0)
    if (j)
    begin
      if (k)
        q = ~q0; // Toggle: q = ~q0
      else
        q = 1;   // Set: q = 1
    end
    else
    begin
      if (k)
        q = 0;   // Reset: q = 0
      else
        q = q0;  // No Change: q = q0
    end
endmodule
