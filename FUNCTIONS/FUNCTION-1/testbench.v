`timescale 1ns/1ps // Specify the timescale

module funtest; // Test bench module
  reg A1, B1, C1; // Declare A1, B1, and C1 as registers (inputs)
  wire F;         // Declare F as a wire (output)

  fun f1(A1, B1, C1, F); // Instantiate the function module

  initial begin
    A1 = 1'b0; B1 = 1'b0; C1 = 1'b0; // Initialize inputs A1, B1, and C1 to 0
    #1 A1 = 1'b0; B1 = 1'b0; C1 = 1'b1; // Change inputs after 1 time unit
    #1 A1 = 1'b0; B1 = 1'b1; C1 = 1'b0; // Change inputs after 1 more time unit
    #1 A1 = 1'b0; B1 = 1'b1; C1 = 1'b1; // Change inputs after 1 more time unit
    #1 A1 = 1'b1; B1 = 1'b0; C1 = 1'b0; // Change inputs after 1 more time unit
    #1 A1 = 1'b1; B1 = 1'b0; C1 = 1'b1; // Change inputs after 1 more time unit
    #1 A1 = 1'b1; B1 = 1'b1; C1 = 1'b0; // Change inputs after 1 more time unit
    #1 A1 = 1'b1; B1 = 1'b1; C1 = 1'b1; // Change inputs after 1 more time unit
    #1 A1 = 1'b1; B1 = 1'b0; C1 = 1'b0; // Change inputs after 1 more time unit
    #1 A1 = 1'b1; B1 = 1'b0; C1 = 1'b0; // Change inputs after 1 more time unit
  end
endmodule
