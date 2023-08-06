`timescale 1ns/1ps // Specify the timescale

module testadder; // Test bench module
  reg a1, b1, c1; // Declare test bench inputs as registers
  wire s1, co1;   // Declare test bench outputs as wires

  fulladder f1(.a(a1), .b(b1), .cin(c1), .sum(s1), .cout(co1)); // Instantiate the full adder module

  initial begin
    a1 = 1'b0; b1 = 1'b1; c1 = 1'b0; // Set inputs a1, b1, c1 to 0, 1, 0
    #1 a1 = 1'b1; b1 = 1'b1; c1 = 1'b0; // Change inputs to 1, 1, 0 after 1 time unit
    #1 a1 = 1'b1; b1 = 1'b1; c1 = 1'b1; // Change inputs to 1, 1, 1 after 1 more time unit
    #1 a1 = 1'b0; b1 = 1'b0; c1 = 1'b0; // Change inputs to 0, 0, 0 after 1 more time unit
  end
endmodule
