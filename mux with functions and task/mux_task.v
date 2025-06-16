// Code your design here
module mux_16X1(
  input [15:0] in,
  input [3:0] sel,
  output reg y
   );
  
  always @(*) begin
    mux(in,sel,y);
  end
  
  task mux;
    input [15:0] in;
    input [3:0] sel;
    output reg y;
    begin
      y=in[sel];          
    end
  endtask
endmodule