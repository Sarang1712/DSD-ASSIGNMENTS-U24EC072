module fulladder_behavioural(sum,cout,a,b,cin);
  input a,b,cin;
  output reg sum,cout;
  
  always @(a or b or cin)
    begin
      {cout,sum}=a+b+cin;
       end
       endmodule; 