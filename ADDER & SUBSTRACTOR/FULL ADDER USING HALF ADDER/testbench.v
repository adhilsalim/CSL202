module tb_fullAdd; // Test bench module
  // Inputs
  reg Data_in_A;
  reg Data_in_B;
  reg Data_in_C;
  
  // Outputs
  wire Data_out_Sum;
  wire Data_out_Carry;

  // Instantiate the Unit Under Test (UUT)
  full_adder uut(
    .Data_in_A(Data_in_A),
    .Data_in_B(Data_in_B),
    .Data_in_C(Data_in_C),
    .Data_out_Sum(Data_out_Sum),
    .Data_out_Carry(Data_out_Carry)
  );

  initial begin
    // Apply inputs. 8 combinations of inputs are possible.
    // They are given below.
    Data_in_A = 0; Data_in_B = 0; Data_in_C = 0; #100;
    Data_in_A = 0; Data_in_B = 0; Data_in_C = 1; #100;
    Data_in_A = 0; Data_in_B = 1; Data_in_C = 0; #100;
    Data_in_A = 0; Data_in_B = 1; Data_in_C = 1; #100;
    Data_in_A = 1; Data_in_B = 0; Data_in_C = 0; #100;
    Data_in_A = 1; Data_in_B = 0; Data_in_C = 1; #100;
    Data_in_A = 1; Data_in_B = 1; Data_in_C = 0; #100;
    Data_in_A = 1; Data_in_B = 1; Data_in_C = 1; #100;
  end
endmodule
