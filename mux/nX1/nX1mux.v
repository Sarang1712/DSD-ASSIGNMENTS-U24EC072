// Code your design here
// Code your design here
module MUX_8X1#(parameter n=3)(
  input [0:(2**n)-1] in,
  input [n-1:0] sel,
  output reg y
);
  
  integer i;
  always @(*) begin
    for(i = 0; i < 2**n; i = i + 1) begin
      if(sel==i[n-1:0])     //taking three bit version of i
        y=in[i];
    end
  end
endmodule