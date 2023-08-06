`timescale 1ns/1ps // Specify the timescale

module nandtest; // Test bench module
  reg a, b;   // Declare a and b as registers (inputs)
  wire c;     // Declare c as a wire (output)

  nand1 A1(c, a, b); // Instantiate the NAND gate module

  initial begin
    a = 1'b0; b = 1'b0; // Initialize inputs a and b to 0
    #1 a = 1'b0; b = 1'b1; // Change inputs a and b after 1 time unit
    #1 a = 1'b1; b = 1'b0; // Change inputs a and b after 1 more time unit
    #1 a = 1'b1; b = 1'b1; // Change inputs a and b after 1 more time unit
  end
endmodule
