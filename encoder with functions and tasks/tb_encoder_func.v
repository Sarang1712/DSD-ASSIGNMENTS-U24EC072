// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb_encoder_8X3;
  reg [7:0] in;
  wire [2:0] y;

  encoder_8X3 uut (
   .in(in),
   .y(y)
  );

  initial begin
    $dumpfile("encoder_8X3.vcd");
    $dumpvars(0,tb_encoder_8X3);
    $display("   Input      | Output (y)");
    $monitor("%08b       |%03b    ",in,y);
    
    for(integer i=0;i<8;i++) begin
    in=8'b0;
    in[i]=1'b1;
      #10;
    end
    
    $finish;
  end
endmodule

    