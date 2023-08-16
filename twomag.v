module ree(a,b,eq,lt,gt);
 input a,b;
 output reg eq,lt,gt;
 always@(a,b)
 begin
    if(a==b)
    begin
        eq=1;lt=0;gt=0;
    end
    else if(a<b)
    begin
        eq=0;lt=1;gt=0;
    end
    else
    begin
        eq=0;lt=0;gt=1;
    end
 end
endmodule

//testbench

module mag;
 reg a,b;
 wire gt,lt,eq;
 ree gate(a,b,eq,lt,gt);
 initial begin
    $dumpfile("magni.vcd");
    $dumpvars(1);
    $display("Magnitude comparator\n a b eq lt gt");
    $monitor(" %b %b %b %b %b",a,b,eq,lt,gt);
    a=0;b=0;
    #1;a=0;b=1;
    #1;a=1;b=0;
    #1;a=1;b=1;
    #1;
 end
endmodule