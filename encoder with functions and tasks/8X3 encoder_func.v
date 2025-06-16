// Code your design here
// Code your design here
module encoder_8X3 (
  input [7:0] in,
  output reg [2:0] y
);
  
   always @(*) begin
    y=encode(in);
   end
  
  function [2:0]encode;
      input [7:0] in;
      begin
        encode=3'b000;
      for(integer i=0;i<8;i=i+1) begin
        if(in[i]==1'b1)
        encode=i[2:0];
      end
     end
  endfunction
  
endmodule