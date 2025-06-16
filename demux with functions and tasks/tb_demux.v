// Code your testbench here
// or browse Examples
module tb_demux_1X16;
  reg in;
  reg [3:0] sel;
  wire [15:0] y;
  
  demux_1X16 uut(
    .in(in),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("demux_1X16.vcd");
    $dumpvars(0,tb_demux_1X16);
    $display("  sel     | Output (y)");
    $monitor("%b       |%b    ",sel,y);
    
    in=1'b0; sel=4'b1010;
    #10;
    in=1'b1;
    for(integer i=0;i<16;i=i+1)begin
      sel=i;
    #10;
      
  end
    
  $finish;
  end
endmodule
    
  