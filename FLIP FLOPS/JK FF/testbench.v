`timescale 1ns/1ps

module jkfftb;
  reg j, k, q0, clk;
  wire q;

  jkffp m1(q, q0, j, k, clk);

  initial
  begin
    j = 1'b0; k = 1'b0; q0 = 1'b0; // Set initial values for j, k, and q0
    #5 j = 1'b0; k = 1'b0; q0 = 1'b1; // Set j = 0, k = 0, q0 = 1 after 5 time units
    #5 j = 1'b0; k = 1'b1; q0 = 1'b0; // Set j = 0, k = 1, q0 = 0 after 5 more time units
    #5 j = 1'b0; k = 1'b1; q0 = 1'b1; // Set j = 0, k = 1, q0 = 1 after 5 more time units
    #5 j = 1'b1; k = 1'b0; q0 = 1'b0; // Set j = 1, k = 0, q0 = 0 after 5 more time units
    #5 j = 1'b1; k = 1'b0; q0 = 1'b1; // Set j = 1, k = 0, q0 = 1 after 5 more time units
    #5 j = 1'b1; k = 1'b1; q0 = 1'b0; // Set j = 1, k = 1, q0 = 0 after 5 more time units
    #5 j = 1'b1; k = 1'b1; q0 = 1'b1; // Set j = 1, k = 1, q0 = 1 after 5 more time units
  end

  initial
  begin
    clk = 1'b0; // Initialize clk to 0
    forever #1 clk = ~clk; // Toggle clk every 1 time unit
  end
endmodule
