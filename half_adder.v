// s=a xor b 
//carry=ab
module full(output s,ca,input a,b);
 xor(s,a,b);
 and(ca,a,b);
endmodule

module half_adder;
 reg a,b;
 wire s,ca;
 full instance0(s,ca,a,b);
 initial begin
    $dumpfile("veril.vcd");
    $dumpvars(1);
    $display("half adder\n a b   sum  carry ");
    $monitor(a," ",b,"  ",s,"  ",ca);
    a=0;b=0;
    #1;a=0;b=1;
    #1;a=1;b=0;
    #1;a=1;b=1;
 end
endmodule