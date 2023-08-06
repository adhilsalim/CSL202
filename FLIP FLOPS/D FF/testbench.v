`timescale 1ns/1ps

module dfftb;
  reg d, clk, rst;
  wire q;

  dffp m1(q, d, clk, rst);

  initial
  begin
    d = 1'b0; rst = 1'b1; // Set initial values for d and rst
    #10 rst = 1'b0; d = 1'b1; // Release reset and set d to 1 after 10 time units
    #10 d = 1'b0; // Set d to 0 after 10 more time units
  end

  initial
  begin
    clk = 1'b0; // Initialize clk to 0
    forever #5 clk = ~clk; // Toggle clk every 5 time units
  end
endmodule