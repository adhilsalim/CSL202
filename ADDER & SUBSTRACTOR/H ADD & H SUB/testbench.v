module combinationalckt_tb(); // Test bench module
  reg tb_a, tb_b, tb_a1, tb_b1; // Declare test bench inputs as registers
  wire tb_sum, tb_carry, tb_diff, tb_borrow; // Declare test bench outputs as wires

  HA1 adder1(tb_sum, tb_carry, tb_a, tb_b); // Instantiate the half adder module
  HS1 sub1(tb_diff, tb_borrow, tb_a1, tb_b1); // Instantiate the half subtractor module

  initial begin
    tb_a = 1'b0;
    tb_b = 1'b0;
    tb_a1 = 1'b0;
    tb_b1 = 1'b0;
    #10
    tb_a = 1'b0;
    tb_b = 1'b1;
    tb_a1 = 1'b0;
    tb_b1 = 1'b1;
    #10
    tb_a = 1'b1;
    tb_b = 1'b0;
    tb_a1 = 1'b1;
    tb_b1 = 1'b0;
    #10
    tb_a = 1'b1;
    tb_b = 1'b1;
    tb_a1 = 1'b1;
    tb_b1 = 1'b1;
    #10
    tb_a = 1'b0;
    tb_b = 1'b0;
    tb_a1 = 1'b0;
    tb_b1 = 1'b0;
  end
endmodule
