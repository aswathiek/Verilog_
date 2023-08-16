module fun(output x,y,input a,b,c);
 wire t1,t2,t3;
 and(t1,a,b),(t2,b,c),(t3,c,a);
 xor(x,a,b,c);
 or(y,t1,t2,t3);
endmodule

module main;
 reg a,b,c;
 wire x,y;
 fun instance0(x,y,a,b,c);
 initial begin
  $dumpfile("outp.vcd");
  $dumpvars(1);
  $display("Function\n a b c   s  c");
  $monitor(a," ",b," ",c,"  ",x,"  ",y);
  a=0;b=0;c=0;
  #1; a=0;b=0;;c=1;
  #1; a=0;b=1;c=0;
  #1; a=0;b=1;c=1;
  #1; a=1;b=0;c=0;
  #1; a=1;b=0;c=1;
  #1; a=1;b=1;c=0;
  #1; a=1;b=1;c=1;
  #1;
 end
endmodule