// s=a xor b xor c
//carry=ab+bc+ca
module full(output s,ca,input a,b,c);
 wire t1,t2,t3;
 and(t1,a,b),(t2,b,c),(t3,c,a);
 xor(s,a,b,c);
 or(ca,t1,t2,t3);
endmodule

module full_adder;
 reg a,b,c;
 wire s,ca;
 full instance0(s,ca,a,b,c);
 initial begin
    $dumpfile("veri.vcd");
    $dumpvars(1);
    $display("full adder\n a b c  sum  carry ");
    $monitor(a," ",b," ",c,"  ",s,"  ",ca);
    a=0;b=0;c=0;
    #1;a=0;b=0;c=1;
    #1;a=0;b=1;c=0;
    #1;a=0;b=1;c=1;
    #1;a=1;b=0;c=0;
    #1;a=1;b=0;c=1;
    #1;a=1;b=1;c=0;
    #1;a=1;b=1;c=1;
    #1;
 end
endmodule