//grey to binary
//b[3]=g[2]
//b[2]=b[3] xor g[2]

module fml(output [3:0]b,input [3:0]g);
 assign b[3]=g[2];
 xor(b[2],b[3],g[2]),(b[1],b[2],g[1]),(b[0],b[1],g[0]);
endmodule

module grey_to_binary;
 reg [3:0]g;
 wire [3:0]b;
 fml instance0(b,g);
 initial begin 
    $dumpfile("hel.vcd");
    $dumpvars(1);
    $display(" Grey to Binary");
    $monitor(" %b  %b",g,b);

    g=0;
    #1;g=1;
    #1;g=2;
    #1;g=3;
    #1;g=4;
    #1;g=5;
    #1;g=6;
    #1;g=7;
    #1;g=8;
    #1;g=9;
    #1;g=10;
    #1;g=11;
    #1;g=12;
    #1;g=13;
    #1;g=14;
    #1;g=15;
    #1;
 end
endmodule