`timescale 1ns/1ps // Specify the timescale

module nottest; // Test bench module
  reg a;   // Declare a as a register (input)
  wire b;  // Declare b as a wire (output)

  not1 N1 (b, a); // Instantiate the NOT gate module

  initial begin
    a = 1'b0; // Initialize input a to 0

    #1 a = 1'b1; // Change input a to 1 after 1 time unit
    
    #1 a = 1'bx; // x means unknown, ie. don't care
  end
endmodule
