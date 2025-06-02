module tb_fulladder;
  reg a, b, cin;
  wire sum, cout;
  

  
   fulladder_structural uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));


  initial begin
    $dumpfile("fulladder_waveform.vcd");
  	$dumpvars(0, tb_fulladder);
    $display("a b cin | sum cout");
    $monitor("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;

    $finish;
  end
endmodule