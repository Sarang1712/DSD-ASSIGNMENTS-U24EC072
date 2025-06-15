// Code your testbench here
// or browse Examples
module tb_mux_8X1;
  parameter n=3;
  reg [0:2**n-1]in;
  reg [n-1:0]sel;
  wire y;
  
  MUX_8X1 uut(
    .in(in),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("MUX_8X1.vcd");
    $dumpvars(0,tb_mux_8X1);
    $display("sel  | output");
    $monitor("%b  |  %b",sel,y);
    
    in=8'b10101100;
    
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