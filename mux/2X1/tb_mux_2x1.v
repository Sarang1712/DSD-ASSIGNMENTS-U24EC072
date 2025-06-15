// Code your testbench here
// or browse Examples
module tb_mux_2X1;
  reg a,b,sel;
  wire y;
  
  MUX_2X1 uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("MUX_2X1.vcd");
    $dumpvars(0,tb_mux_2X1);
    $display("sel | output");
    $monitor("%b  |  %b",sel,y);
    
    sel=0;a=0;b=1; #10
    sel=1;a=0;b=1; #10
    sel=0;a=1;b=0; #10
    sel=1;a=1;b=0; #10
    $finish;
  end
endmodule