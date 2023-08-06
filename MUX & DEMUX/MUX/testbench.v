`timescale 1ns/1ps // Specify the timescale

module mux_4_2test; // Test bench module
  wire y;         // Declare output y as a wire
  reg d0, d1, d2, d3, s1, s0; // Declare inputs d0, d1, d2, d3, s1, and s0 as registers

  mux_4_2 u2(.y(y), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .s1(s1), .s0(s0)); // Instantiate the 4:1 MUX

  initial begin
    d0 = 1'b1; d1 = 1'b0; d2 = 1'b1; d3 = 1'b0; // Set data inputs (d0, d1, d2, d3)
    s1 = 1'b0; s0 = 1'b0; // Set select inputs (s1, s0)
    #1 s1 = 1'b0; s0 = 1'b1; d1 = 1'b0; // Change select inputs and data input after 1 time unit
    #1 s1 = 1'b1; s0 = 1'b0; // Change select inputs after 1 more time unit
    #1 s1 = 1'b1; s0 = 1'b1; // Change select inputs after 1 more time unit
  end
endmodule
