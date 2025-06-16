// Code your testbench here
// or browse Examples
module tb_mux_16X1;
  reg [15:0] in;
  reg [3:0] sel;
  wire y;
  
  mux_16X1 uut(
    .in(in),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("mux_16X1.vcd");
    $dumpvars(0,tb_mux_16X1);
    $display("  sel     | Output (y)");
    $monitor("%b       |%b    ",sel,y);
    
    in=16'b1010111100001010;
    
    for(integer i=0;i<16;i=i+1)begin
      sel=i;
    #10;
  end
    
  $finish;
  end
endmodule
    