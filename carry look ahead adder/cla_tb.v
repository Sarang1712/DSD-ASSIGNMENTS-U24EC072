// Code your testbench here
// or browse Examples
module tb_carrylookahead_adder;

  reg [7:0] a, b;
  reg cin;
  wire [7:0] s;
  wire cout;

  // Instantiate your adder
  carrylookahead_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
  );

  initial
    begin
  	$dumpfile("waveform.vcd");      
   	$dumpvars(0, tb_carrylookahead_adder);
    $monitor("%b %b %b  |  %b   %b", a, b,cin , s, cout);

   	a = 8'b00000000; b = 8'b00000000; cin=0; #10;
    a = 8'b00000001; b = 8'b00000001; cin=1;#10;
    a = 8'b00001111; b = 8'b00000001; cin=0; #10;
    a = 8'b11110000; b = 8'b00001111; cin=1; #10;
    a = 8'b11111111; b = 8'b00000001; cin=0; #10;
    a = 8'b10101010; b = 8'b01010101; cin=1; #10;

    $finish;
  end

endmodule