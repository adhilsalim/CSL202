// Half Adder
module HA1(sum, carry, a, b);
  input a, b;
  output sum, carry;
  assign sum = a ^ b;    // XOR operation for sum
  assign carry = a & b;  // AND operation for carry
endmodule

// Half Subtractor
module HS1(diff, borrow, a1, b1);
  input a1, b1;
  output diff, borrow;
  assign diff = a1 ^ b1;      // XOR operation for difference
  assign borrow = ~a1 & b1;  // AND operation for borrow
endmodule
