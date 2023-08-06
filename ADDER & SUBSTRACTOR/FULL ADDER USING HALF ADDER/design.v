module half_adder(Data_in_A, Data_in_B, Data_out_Sum, Data_out_Carry);
  input Data_in_A;
  input Data_in_B;
  output Data_out_Sum;
  output Data_out_Carry;

  // Implement the Sum and Carry equations using Verilog Bit operators.
  assign Data_out_Sum = Data_in_A ^ Data_in_B;       // XOR operation
  assign Data_out_Carry = Data_in_A & Data_in_B;    // AND operation
endmodule

module full_adder(Data_in_A, Data_in_B, Data_in_C, Data_out_Sum, Data_out_Carry);
  input Data_in_A;
  input Data_in_B;
  input Data_in_C;
  output Data_out_Sum;
  output Data_out_Carry;

  // Internal variables
  wire ha1_sum;
  wire ha2_sum;
  wire ha1_carry;
  wire ha2_carry;

  // Instantiate the half adder 1
  half_adder ha1(.Data_in_A(Data_in_A), .Data_in_B(Data_in_B), .Data_out_Sum(ha1_sum), .Data_out_Carry(ha1_carry));

  // Instantiate the half adder 2
  half_adder ha2(.Data_in_A(Data_in_C), .Data_in_B(ha1_sum), .Data_out_Sum(ha2_sum), .Data_out_Carry(ha2_carry));

  // Sum output from the 2nd half adder is connected to full adder output
  assign Data_out_Sum = ha2_sum;

  // The carries from both the half adders are OR'ed to get the final carry.
  assign Data_out_Carry = ha1_carry | ha2_carry;
endmodule
