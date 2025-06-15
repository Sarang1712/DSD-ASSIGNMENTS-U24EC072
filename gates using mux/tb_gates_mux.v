// Code your testbench here
// or browse Examples
module tb_gates_mux;
  reg a,b;
  reg[1:0]sel;
  wire y;
  
  gates_mux uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("gates_muxr.vcd");
    $dumpvars(0,tb_gates_mux);
    $display("a  b  sel  | y");
    $monitor("%b  %b  %b    | %b  ",a,b,sel,y);
    
    a=1;b=0;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    
    $finish;
  end
endmodule