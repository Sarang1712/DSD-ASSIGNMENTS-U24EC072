// Code your design here
// Code your design here
module encoder_8X3 (
  input [7:0] in,
  output reg [2:0] y
);
  
   always @(*) begin
     encode(in,y);
   end
  
  task encode;
    input[7:0]in;
    output [2:0]y;
    begin
      y=3'b000;
      for(integer i=0;i<8;i=i+1)begin
        if(in[i]==1'b1)
          y=i[2:0];
      end
    end
  endtask 
endmodule
