 module encoder_4X2( 
    input d1,d2,d3,d4,
    output reg a,b
  );

    always @(*) begin
      a=0;
      b=0;
//assuming only one input high
      if(d1) begin
        a=0; b=0;
      end
      else if(d2) begin
        a=0; b=1;
      end
      else if(d3) begin
        a=1; b=0;
      end
      else if(d4) begin
        a=1; b=1;
      end
      else begin
        a=1'bx; b=1'bx;
      end
    end
   endmodule
