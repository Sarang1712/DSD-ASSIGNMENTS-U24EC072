// Code your design here
module decoder_3X8(
  input [2:0]in,
  output reg [7:0]y
);
  
  always @(*) begin
    decode(in,y);
  end
  
  task decode;
    input [2:0] in;
    output [7:0]y;
    begin
      y=8'b0;
    for(integer i=0;i<8;i=i+1) begin
      if(in==i[2:0])
        y[i]=1'b1;
     end
    end
  endtask
  
endmodule