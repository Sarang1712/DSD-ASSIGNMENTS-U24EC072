// Code your design here
module carrylookahead_adder(a,b,cin,s,cout);
  input [7:0] a,b;
  input cin;
  output [7:0] s;
  output cout;
  
  wire[7:0] P,G;
  wire[8:0] c;
  
  assign P=a^b;
  assign G=a&b;
  
  assign c[0]= cin;
  assign c[1]= G[0] | (P[0]&c[0]);
  assign c[2]= G[1] | (P[1]&c[1]);
  assign c[3]= G[2] | (P[2]&c[2]);
  assign c[4]= G[3] | (P[3]&c[3]);
  assign c[5]= G[4] | (P[4]&c[4]);
  assign c[6]= G[5] | (P[5]&c[5]);
  assign c[7]= G[6] | (P[6]&c[6]);
  assign c[8]= G[7] | (P[7]&c[7]);
  
  assign s = P ^ c[7:0];
  assign cout=c[8];
endmodule;