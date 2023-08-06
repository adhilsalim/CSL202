module not1(b, a);
  output b; // Output port b
  input a;  // Input port a
  assign b = ~a; // NOT gate implementation: b is the logical NOT of a
endmodule
