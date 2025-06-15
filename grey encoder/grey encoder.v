// Code your design here
module grey_encoder #(parameter n=3)(
  input [n-1:0] b,
  output reg [n-1:0] g
);
  
  
  always @(*) begin
    g[n-1]= b[n-1];
    for(integer i=n-2 ;i>=0;i=i-1) begin
      g[i]=b[i+1] ^ b[i];
    end
  end
endmodule