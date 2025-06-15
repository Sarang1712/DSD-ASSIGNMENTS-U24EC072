// Code your testbench here
// or browse Examples
module tb_demux_1xn;
  parameter n=3;
  reg in;
  reg [n-1:0]sel;
  wire [2**n-1:0]y;
  
  demux_1xn uut(
    .in(in),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("demux_1xn.vcd");
    $dumpvars(0,tb_demux_1xn);
    $display("sel  | output");
    $monitor("%b  |  %b",sel,y);
    
    in=1;
    
    sel=3'b000; #10
    sel=3'b001; #10
    sel=3'b010; #10
    sel=3'b011; #10
    sel=3'b100; #10
    sel=3'b101; #10
    sel=3'b110; #10
    sel=3'b111; #10
    $finish;
  end
endmodule