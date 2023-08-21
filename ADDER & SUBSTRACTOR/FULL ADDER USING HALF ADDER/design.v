// HALF ADDER
module half_adder(din_A, din_B, dout_sum, dout_carry);
  input din_A, din_B;
  output dout_sum, dout_carry;

  assign dout_sum = din_A ^ din_B;
  assign dout_carry = din_A & din_B;
endmodule

// FULL ADDER
module full_adder(din_A, din_B, din_cin, dout_sum, dout_carry);
  input din_A, din_B, din_cin;
  output dout_sum, dout_carry;

  // Internal variables
  wire ha1_sum, ha1_carry, ha2_sum, ha2_carry;

  // Instantiate the half adder 1
  half_adder ha1(.din_A(din_A), .din_B(din_B),.dout_sum(ha1_sum), .dout_carry(ha1_carry));

  // Instantiate the half adder 2
  half_adder ha2(.din_A(ha1_sum), .din_B(din_cin), .dout_sum(ha2_sum), .dout_carry(ha2_carry));

  assign dout_sum = ha2_sum;
  assign dout_carry = ha1_carry | ha2_carry;
endmodule
