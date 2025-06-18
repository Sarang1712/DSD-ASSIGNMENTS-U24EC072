// Code your design here
module half_adder(
  input a,b,
  output sum,cout
);
  assign sum=a^b;
  assign cout=a&b;
endmodule

module full_adder(
  input a,b,cin,
  output s,co
);
  assign s=a^b^cin;
  assign co=(a&b)|(b&cin)|(cin&a);
endmodule

module array_multiplier_8bit(
  input [7:0] A,B,
  output [15:0] P
);
  
  //generating partial products
  wire [7:0] pp [7:0];
  
  genvar i,j;
  generate
    for(i=0;i<8;i=i+1) begin
      for(j=0;j<8;j=j+1) begin
        assign pp[i][j]= A[j] & B[i];
      end
    end
  endgenerate
  
  wire [56:1] s,c;
  
  assign P[0]=pp[0][0]; 
  
  half_adder ha1(pp[0][1],pp[1][0],s[1],c[1]);
  assign P[1]=s[1];
  
  full_adder fa1(pp[0][2],pp[1][1],pp[2][0],s[2],c[2]);
  half_adder ha2(s[2],c[1],s[3],c[3]);
  assign P[2]=s[3];
  
  full_adder fa2(pp[0][3],pp[1][2],pp[2][1],s[4],c[4]);
  full_adder fa3(pp[3][0],s[4],c[2],s[5],c[5]);
  half_adder ha3(s[5],c[3],s[6],c[6]);
  assign P[3]=s[6];
  
  full_adder fa4(pp[0][4],pp[1][3],pp[2][2],s[7],c[7]);
  full_adder fa5(pp[3][1],pp[4][0],s[7],s[8],c[8]);
  full_adder fa6(s[8],c[4],c[5],s[9],c[9]);
  half_adder ha4(s[9],c[6],s[10],c[10]);
  assign P[4]=s[10];
  
  full_adder fa7(pp[0][5],pp[1][4],pp[2][3],s[11],c[11]);
  full_adder fa8(pp[3][2],pp[4][1],s[11],s[12],c[12]);
  full_adder fa9(pp[5][0],s[12],c[7],s[13],c[13]);
  full_adder fa10(s[13],c[8],c[9],s[14],c[14]);
  half_adder ha5(s[14],c[10],s[15],c[15]);
  assign P[5]=s[15];
  
  full_adder fa11(pp[0][6],pp[1][5],pp[2][4],s[16],c[16]);
  full_adder fa12(pp[3][3],pp[4][2],s[16],s[17],c[17]);
  full_adder fa13(pp[5][1],pp[6][0],s[17],s[18],c[18]);
  full_adder fa14(s[18],c[11],c[12],s[19],c[19]);
  full_adder fa15(s[19],c[13],c[14],s[20],c[20]);
  half_adder ha6(s[20],c[15],s[21],c[21]);
  assign P[6]=s[21];
  
  full_adder fa16(pp[0][7],pp[1][6],pp[2][5],s[22],c[22]);
  full_adder fa17(pp[3][4],pp[4][3],s[22],s[23],c[23]);
  full_adder fa18(pp[5][2],pp[6][1],s[23],s[24],c[24]);
  full_adder fa19(pp[7][0],s[24],c[16],s[25],c[25]);
  full_adder fa20(s[25],c[17],c[18],s[26],c[26]);
  full_adder fa21(s[26],c[19],c[20],s[27],c[27]);
  half_adder ha7(s[27],c[21],s[28],c[28]);
  assign P[7]=s[28];
  
  full_adder fa22(pp[1][7],pp[2][6],pp[3][5],s[29],c[29]);
  full_adder fa23(pp[4][4],pp[5][3],s[29],s[30],c[30]);
  full_adder fa24(pp[6][2],pp[7][1],s[30],s[31],c[31]);
  full_adder fa25(s[31],c[22],c[23],s[32],c[32]);
  full_adder fa26(s[32],c[24],c[25],s[33],c[33]);
  full_adder fa27(s[33],c[26],c[27],s[34],c[34]);
  half_adder ha8(s[34],c[28],s[35],c[35]);
  assign P[8]=s[35];
  
  full_adder fa28(pp[2][7],pp[3][6],pp[4][5],s[36],c[36]);
  full_adder fa29(pp[5][4],pp[6][3],s[36],s[37],c[37]);
  full_adder fa30(pp[7][2],s[37],c[29],s[38],c[38]);
  full_adder fa31(s[38],c[30],c[31],s[39],c[39]);
  full_adder fa32(s[39],c[32],c[33],s[40],c[40]);
  full_adder fa33(s[40],c[34],c[35],s[41],c[41]);
  assign P[9]=s[41];
  
  full_adder fa34(pp[3][7],pp[4][6],pp[5][5],s[42],c[42]);
  full_adder fa35(pp[4][4],pp[7][3],s[42],s[43],c[43]);
  full_adder fa36(s[43],c[36],c[37],s[44],c[44]);
  full_adder fa37(s[44],c[38],c[39],s[45],c[45]);
  full_adder fa38(s[45],c[40],c[41],s[46],c[46]);
  assign P[10]=s[46];
  
  full_adder fa39(pp[4][7],pp[5][6],pp[6][5],s[47],c[47]);
  full_adder fa40(pp[7][4],s[47],c[42],s[48],c[48]);
  full_adder fa41(s[48],c[43],c[44],s[49],c[49]);
  full_adder fa42(s[49],c[45],c[46],s[50],c[50]);
  assign P[11]=s[50];
  
  full_adder fa43(pp[5][7],pp[6][6],pp[7][5],s[51],c[51]);
  full_adder fa44(s[51],c[47],c[48],s[52],c[52]);
  full_adder fa45(s[52],c[49],c[50],s[53],c[53]);
  assign P[12]=s[53];
  
  full_adder fa46(pp[6][7],pp[7][6],c[51],s[54],c[54]);
  full_adder fa47(s[54],c[52],c[53],s[55],c[55]);
  assign P[13]=s[55];
  
  full_adder fa48(pp[7][7],c[54],c[55],s[56],c[56]);
  assign P[14]=s[56];
       
  assign P[15]=c[56];  
endmodule
