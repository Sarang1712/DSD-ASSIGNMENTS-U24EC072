// Code your design here
module mux_16X1(
  input [15:0] in,
  input [3:0] sel,
  output reg y
   );
  
  always @(*) begin
    y=mux(in,sel);
  end
  
  function mux;
    input [15:0] in;
    input [3:0] sel;
    begin
      mux=in[sel];          
    end
  endfunction
endmodule