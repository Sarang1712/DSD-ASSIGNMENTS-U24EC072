// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb_array_multiplier_8bit;

  // Inputs
  reg [7:0] A, B;

  // Output
  wire [15:0] P;

  // Instantiate the DUT (Design Under Test)
  array_multiplier_8bit uut (
    .A(A),
    .B(B),
    .P(P)
  );

  initial begin
    $dumpfile("array_multiplier_8bit.vcd"); 
    $dumpvars(0, tb_array_multiplier_8bit);
    $monitor( "%b X %b = %b",A,B,P);
    A = 8'b00000000; B = 8'b00000000; #10;
    A = 8'b00000001; B = 8'b00000010; #10;
    A = 8'b00000011; B = 8'b00000010; #10; 
    A = 8'b00000101; B = 8'b00000011; #10; 
    A = 8'b00001000; B = 8'b00001010; #10; 

    $finish;
  end

endmodule