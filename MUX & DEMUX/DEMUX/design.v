module demux (d0, d1, d2, d3, s0, s1, i);
  output d0, d1, d2, d3; // Output ports d0, d1, d2, d3 (demultiplexed outputs)
  input s0, s1;          // Input ports s0, s1 (select inputs)
  input i;               // Input i (input to be demultiplexed)

  assign d0 = (i & ~s1 & ~s0);
  assign d1 = (i & ~s1 & s0);
  assign d2 = (i & s1 & ~s0);
  assign d3 = (i & s1 & s0);
endmodule
