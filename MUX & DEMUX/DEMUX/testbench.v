`timescale 1ns/1ps // Specify the timescale

module demuxtest; // Test bench module
  reg s0, s1; // Declare select inputs s0, s1 as registers
  reg d;      // Declare input i as a register
  wire y0, y1, y2, y3; // Declare output signals d0, d1, d2, d3 as wires

  demux dm(y0, y1, y2, y3, s0, s1, d); // Instantiate the 1:4 DEMUX

  initial begin
    d = 1'b1; // Set input i to 1
    #1 s1 = 1'b0; s0 = 1'b0; // Change select inputs s1, s0 after 1 time unit
    #1 s1 = 1'b0; s0 = 1'b1; // Change select inputs after 1 more time unit
    #1 s1 = 1'b1; s0 = 1'b0; // Change select inputs after 1 more time unit
    #1 s1 = 1'b1; s0 = 1'b1; // Change select inputs after 1 more time unit
    #1 s1 = 1'b0; s0 = 1'b0; // Change select inputs after 1 more time unit
  end
endmodule
