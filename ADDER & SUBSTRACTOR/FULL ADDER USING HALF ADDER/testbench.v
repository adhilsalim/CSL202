module tb_fullAdd; // Test bench module
  // Inputs
  reg din_A, din_B, din_cin;
  
  // Outputs
  wire dout_sum, dout_carry;
  
  full_adder FH0(
    .din_A(din_A),
    .din_B(din_B),
    .din_cin(din_cin),
    .dout_sum(dout_sum),
    .dout_carry(dout_carry)
  )

  initial begin
    din_A = 1'b0; din_B = 1'b0; din_cin = 1'b0;

    #10 din_A = 1'b0; din_B = 1'b0; din_cin = 1'b1;
    #10 din_A = 1'b0; din_B = 1'b1; din_cin = 1'b0;
    #10 din_A = 1'b0; din_B = 1'b1; din_cin = 1'b1;
    #10 din_A = 1'b1; din_B = 1'b0; din_cin = 1'b0;
    #10 din_A = 1'b1; din_B = 1'b0; din_cin = 1'b1;
    #10 din_A = 1'b1; din_B = 1'b1; din_cin = 1'b0;
    #10 din_A = 1'b1; din_B = 1'b1; din_cin = 1'b1;

    #10 din_A = 1'b1; din_B = 1'b1; din_cin = 1'b1;

  end
endmodule
