module fullsub(d, b, a);
  output d, b;          // Output ports: d (difference) and b (borrow)
  input [2:0] a;        // Input port a (3-bit input)
  // 2 denotes the MSB and 0 denotes the LSB

  assign d = (a[2] ^ a[1] ^ a[0]); // (a XOR b XOR c)
  assign b = (!a[2] & (a[1] ^ a[0])) | (a[1] & a[0]); // (!a AND (b XOR c)) OR (b AND c)
endmodule

/*
 This line declares an input port named 'a'. 
 The [2:0] specifies that the port 'a' is a 3-bit vector, 
 meaning it can store three binary values. 
 Each value can be accessed as a[2], a[1], and a[0]. 
 These values represent the three bits of the input that will be used in the subtraction operation.
*/