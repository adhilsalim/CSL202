module demux (y0, y1, y2, y3, s0, s1, d);
  output y0, y1, y2, y3; // Output ports y0, y1, y2, y3
  input s0, s1;          // Input ports s0, s1 (select inputs)
  input d;               // Input port d (data input)

  assign y0 = (d & ~s1 & ~s0);
  assign y1 = (d & ~s1 & s0);
  assign y2 = (d & s1 & ~s0);
  assign y3 = (d & s1 & s0);
endmodule
