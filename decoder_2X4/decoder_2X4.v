module decoder_2X4(
  input a, b, 
  output d1,d2,d3,d4 
);
  
  assign d1= ~a & ~b;
  assign d2= ~a & b;
  assign d3= a & ~b;
  assign d4= a & b;
  endmodule
  