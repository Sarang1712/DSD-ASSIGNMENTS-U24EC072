// Code your design here
module demux_1X16(
  input in,
  input [3:0] sel,
  output reg [15:0] y
   );
  
  always @(*) begin
    y=demux(in,sel);
  end
  
  function [15:0]demux;
    input in;
    input [3:0] sel;
    begin
      demux=16'b0;
      for(integer i=0;i<16;i=i+1) begin
        if(sel==i[3:0])
          demux[i]=in;
    end
   end 
  endfunction
endmodule