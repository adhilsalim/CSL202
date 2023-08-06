module fullsub(d, b, a);
  output d, b;          // Output ports: d (difference) and b (borrow)
  input [2:0] a;        // Input port a (3-bit input)

  assign d = (a[2] ^ a[1] ^ a[0]);                 // XOR operation for difference
  assign b = (!a[2] & (a[1] ^ a[0])) | (a[1] & a[0]); // AND/OR operation for borrow
endmodule
