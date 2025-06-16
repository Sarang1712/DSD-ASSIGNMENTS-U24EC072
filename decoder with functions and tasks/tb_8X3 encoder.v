// Code your testbench here
// or browse Examples
module tb_decoder_3X8;
  reg [2:0] in;
  wire [7:0] y;
  
  decoder_3X8 uut(
    .in(in),
  	.y(y)
  );
  
  initial begin
    $dumpfile("decoder_3X8.vcd");
    $dumpvars(0,tb_decoder_3X8);
    $display("   Input      | Output (y)");
    $monitor("%03b       |%08b    ",in,y);
    
    in=3'b000;#10;
    for(integer i=0;i<8;i=i+1)begin
      in=i[2:0]; #10;
    end
    
    
    $finish;
  	end
  endmodule