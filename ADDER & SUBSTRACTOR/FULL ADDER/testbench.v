`timescale 1ns/1ps // Specify the timescale

module testadder; // Test bench module
  reg a1, b1, c1; // Declare test bench inputs as registers
  wire s1, co1;   // Declare test bench outputs as wires

  fulladder f1(.a(a1), .b(b1), .cin(c1), .sum(s1), .cout(co1)); // Instantiate the full adder module
  // variables in parenthesis are ports of the module
  // variables outside parenthesis are signals
  initial begin
    a1 = 1'b0; b1 = 1'b0; c1 = 1'b0; // set input to 000
    #1 a1 = 1'b0; b1 = 1'b0; c1 = 1'b1; // 001
    #1 a1 = 1'b0; b1 = 1'b1; c1 = 1'b0; // 010
    #1 a1 = 1'b0; b1 = 1'b1; c1 = 1'b1; // 011
    #1 a1 = 1'b1; b1 = 1'b0; c1 = 1'b0; // 100
    #1 a1 = 1'b1; b1 = 1'b0; c1 = 1'b1; // 101
    #1 a1 = 1'b1; b1 = 1'b1; c1 = 1'b0; // 110
    #1 a1 = 1'b1; b1 = 1'b1; c1 = 1'b1; // 111
    #1 a1 = 1'b0; b1 = 1'b0; c1 = 1'b0; // to get 111 in waveform. value of a1, b1, c1 does not matter
  end
endmodule
