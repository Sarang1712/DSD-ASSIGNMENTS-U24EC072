module fulladder_structural(sum,cout,a,b,cin);
  input a,b,cin;
  output sum,cout;
  wire w1,w2,w3;
  
  xor(w1,a,b);
  xor(sum,w1,cin);
  and(w2,a,b);
  and(w3,cin,w1);
  or(cout,w2,w3);
  endmodule;