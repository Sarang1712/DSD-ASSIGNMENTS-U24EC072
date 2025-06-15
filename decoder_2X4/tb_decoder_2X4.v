module tb_decoder;
  reg a ,b;
  wire d1,d2,d3,d4;
  
  decoder_2X4 uut(
    .a(a),
    .b(b),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .d4(d4)
  );
  
  initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0,tb_decoder);
    $display(" A B | d1 d2 d3 d4 ");
    $monitor(" %b %b | %b %b %b %b ", a,b,d1,d2,d3,d4);
     a=0 ; b=0;#10
     a=0 ; b=1;#10
     a=1 ; b=0;#10
     a=1 ; b=1;#10
    $finish;
  end
endmodule
  
  