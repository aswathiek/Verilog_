module funn(a,b,eq,lt,gt);
 input [1:0]a,b;
 output reg eq,lt,gt;
 always@(a,b)
 begin
  if(a==b)
  begin
  eq=1;lt=0;gt=0;
  end
  else if(a>b)
  begin
  eq=0;lt=0;gt=1;
  end
  else
  begin
  eq=0;lt=1;gt=0;
  end
 end
endmodule

module mag_comp;
 reg [1:0]a,b;
 wire eq,lt,gt;
 funn gate(a,b,eq,lt,gt);
 initial begin
    $dumpfile("mag.vcd");
    $dumpvars(1);
    $display(" magnitude comparator\n a b eq lt gt ");
    $monitor(" %b %b %b %b %b ",a,b,eq,lt,gt);
    a=0;b=0;
    #1;a=0;b=1;
    #1;a=1;b=0;
    #1;a=1;b=1;
    #1;
 end
endmodule