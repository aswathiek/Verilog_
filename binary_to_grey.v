

module bin2gre(output [3:0]g, input [3:0]b);
 assign g[3]=b[3];
 xor(g[2],b[3],b[2]),(g[1],b[1],b[2]),(g[0],b[1],b[0]);
endmodule

module binary_to_grey;
 reg [3:0]b;
 wire [3:0]g;
 bin2gre instance0(g,b);
 initial begin
    $dumpfile("hel.vcd");
    $dumpvars(1);
    $display(" Binary to grey");
    $monitor(" %b  %b",b,g);

    b=0;
    #1;b=1;
    #1;b=2;
    #1;b=3;
    #1;b=4;
    #1;b=5;
    #1;b=6;
    #1;b=7;
    #1;b=8;
    #1;b=9;
    #1;b=10;
    #1;b=11;
    #1;b=12;
    #1;b=13;
    #1;b=14;
    #1;b=15;
    #1;
 end
endmodule