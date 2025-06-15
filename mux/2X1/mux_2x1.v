// Code your design here
module MUX_2X1(
  input a,b,sel,
  output y
);
  
  assign y=sel?b:a;
endmodule