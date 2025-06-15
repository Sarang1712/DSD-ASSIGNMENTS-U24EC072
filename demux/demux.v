// Code your design here
module demux_1xn #(parameter n=3)(
  input in,
  input [n-1:0] sel,
  output reg[2**n-1:0] y
);
  
  integer i;
  always @(*) begin
    y=8'b0;
    for(i=0;i<2**n;i=i+1) begin
      if(sel==i[n-1:0])begin
        y[i]=in;
      end
    end
  end
endmodule
    
           