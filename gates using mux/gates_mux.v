// Code your design here
module gates_mux(
  input a,b,
  input [1:0]sel,
  output reg y
);
  
  reg [3:0]d;
  always @(*) begin
    d[0]=a & b;
    d[1] = a | b;
    d[2] = ~ a;
    d[3] = a ^ b;
    case(sel)
      2'b00: y=d[0];
      2'b01: y=d[1];
      2'b10: y=d[2];
      2'b11: y=d[3];
      default: y=1'bx;
    endcase
  end
endmodule