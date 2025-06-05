module tb_rippleadder;
  reg [7:0] x,y;
  wire [7:0]s;
  wire co;
  

  
  ripple_adder uut (.x(x), .y(y), .s(s), .co(co));


  initial 
    begin
	$dumpfile("waveform.vcd");     
    $dumpvars(0, tb_rippleadder);
    $monitor("%b %b  |  %b   %b", x, y, s, co);

   	x = 8'b00000000; y = 8'b00000000; #10;
    x = 8'b00000001; y = 8'b00000001; #10;
    x = 8'b00001111; y = 8'b00000001; #10;
    x = 8'b11110000; y = 8'b00001111; #10;
    x = 8'b11111111; y = 8'b00000001; #10;
    x = 8'b10101010; y = 8'b01010101; #10;


    $finish;
  end
endmodule