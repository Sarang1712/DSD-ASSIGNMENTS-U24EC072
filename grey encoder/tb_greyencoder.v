// Code your testbench here
// or browse Examples
module tb_grey_encoder #(parameter n=3);
  reg [n-1:0] b;
  wire [n-1:0] g;
  
  grey_encoder uut(
    .b(b),
    .g(g)
  );
  
  initial begin
    $dumpfile("grey_encoder.vcd");
    $dumpvars(0,tb_grey_encoder);
    $display("binary  | grey");
    $monitor("%b  | %b  ",b,g);
    
    for(integer i=0;i<8;i++)begin
      b=i[2:0];
      #10;
    end
    
    $finish;
  end
endmodule
      
      
