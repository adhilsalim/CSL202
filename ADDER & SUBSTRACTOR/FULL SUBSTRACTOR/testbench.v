`timescale 1ns/1ps // Specify the timescale

module fullsubtest; // Test bench module
  reg [2:0] a;     // Declare test bench input 'a' as a 3-bit register
  // 2 denotes the MSB and 0 denotes the LSB
  wire d, b;       // Declare test bench outputs 'd' (difference) and 'b' (borrow) as wires

  fullsub fs(d, b, a); // Instantiate the full subtractor module

  initial begin
      a[2] = 1'b0; a[1] = 1'b0; a[0] = 1'b0; // Set input a to 000

    #1 a[2] = 1'b0; a[1] = 1'b0; a[0] = 1'b1; // Change input a to 001 after 1 time unit
    #1 a[2] = 1'b0; a[1] = 1'b1; a[0] = 1'b0; // Change input a to 010 after 1 more time unit
    #1 a[2] = 1'b0; a[1] = 1'b1; a[0] = 1'b1; // Change input a to 011 after 1 more time unit
    #1 a[2] = 1'b1; a[1] = 1'b0; a[0] = 1'b0; // Change input a to 100 after 1 more time unit
    #1 a[2] = 1'b1; a[1] = 1'b0; a[0] = 1'b1; // Change input a to 101 after 1 more time unit
    #1 a[2] = 1'b1; a[1] = 1'b1; a[0] = 1'b0; // Change input a to 110 after 1 more time unit
    #1 a[2] = 1'b1; a[1] = 1'b1; a[0] = 1'b1; // Change input a to 111 after 1 more time unit

    #1 a[2] = 1'b0; a[1] = 1'b0; a[0] = 1'b0; // to get the last input in the waveform
  end
endmodule
