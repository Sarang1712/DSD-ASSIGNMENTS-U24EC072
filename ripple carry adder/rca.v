module full_adder(sum,cout,a,b,cin);
  input a,b,cin;
  output sum,cout;
  wire w1,w2,w3;
  
  xor(w1,a,b);
  xor(sum,w1,cin);
  and(w2,a,b);
  and(w3,cin,w1);
  or(cout,w2,w3);
 endmodule;

module ripple_adder(x,y,s,co);
  input[7:0] x,y;
  output [7:0] s;
  output co;
 	
  //instantiating full_adder
  wire w1,w2,w3,w4,w5,w6,w7;
  full_adder fa1(s[0],w1,x[0],y[0],1'b0);
  full_adder fa2(s[1],w2,x[1],y[1],w1);
  full_adder fa3(s[2],w3,x[2],y[2],w2);
  full_adder fa4(s[3],w4,x[3],y[3],w3);
  full_adder fa5(s[4],w5,x[4],y[4],w4);
  full_adder fa6(s[5],w6,x[5],y[5],w5);
  full_adder fa7(s[6],w7,x[6],y[6],w6);
  full_adder fa8(s[7],co,x[7],y[7],w7);
  
endmodule  