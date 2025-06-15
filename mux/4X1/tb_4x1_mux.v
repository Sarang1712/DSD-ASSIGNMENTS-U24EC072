// Code your testbench here
// or browse Examples
module tb_mux_4X1;
  reg a,b,c,d;
  reg [1:0]sel;
  wire y;
  
  MUX_4X1 uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("MUX_4X1.vcd");
    $dumpvars(0,tb_mux_4X1);
    $display("sel  a  b  c  d| output");
    $monitor("%b  %b  %b  %b  %b|  %b",sel,a,b,c,d,y);
    
    sel=2'b00;a=0;b=1;c=0;d=1; #10
    sel=2'b01;a=0;b=1;c=0;d=1; #10
    sel=2'b10;a=0;b=1;c=0;d=1; #10
    sel=2'b11;a=0;b=1;c=0;d=1; #10
    $finish;
  end
endmodule