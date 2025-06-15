module tb_priority_encoder;
  reg d1,d2,d3,d4;
  wire a,b,valid;
  
  priority_encoder_4X2 uut(
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .d4(d4),
    .a(a),
    .b(b),
    .valid(valid)
  );
  
  initial begin
    $dumpfile("priority_encoder_4X2.vcd");
    $dumpvars(0,tb_priority_encoder);
    $display("d1 d2 d3 d4  | a b valid");
    $monitor("%b %b %b %b  | %b %b %b",d1,d2,d3,d4,a,b,valid);
    
    d1 = 1; d2 = 0; d3 = 0; d4 = 0; #10;
    d1 = 1; d2 = 0; d3 = 0; d4 = 1; #10;
    d1 = 0; d2 = 1; d3 = 0; d4 = 0; #10;
    d1 = 0; d2 = 1; d3 = 1; d4 = 0; #10;
    d1 = 0; d2 = 0; d3 = 1; d4 = 0; #10;
    d1 = 0; d2 = 0; d3 = 0; d4 = 1; #10;
    d1 = 0; d2 = 0; d3 = 0; d4 = 0; #10;
     $finish;
  end
endmodule
    