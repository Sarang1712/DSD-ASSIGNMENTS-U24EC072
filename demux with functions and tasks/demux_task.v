// Code your design here
module demux_1X16(
  input in,
  input [3:0] sel,
  output reg [15:0] y
   );
  
  always @(*) begin
    demux(in,sel,y);
  end
  
  task demux;
    input in;
    input [3:0] sel;
    output [15:0]y;
    begin
      y=16'b0;
      for(integer i=0;i<16;i=i+1) begin
        if(sel==i[3:0])
          y[i]=in;
    end
   end 
  endtask
endmodule