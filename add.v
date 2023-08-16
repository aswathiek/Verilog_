module fun(output y,input x,z);
 nand(y,x,z);
endmodule

module add;
 reg x,z;
 wire y;
 fun instance0(y,x,z);
 initial begin
    $dumpfile("hello.vcd");
    $dumpvars(1);
    $display("and gate\n x y z");
    $monitor(x," ",z," ",y," ");
    x=0;z=0;
    #1;x=0;z=1;
    #1;x=1;z=0;
    #1;x=1;z=1;
    #1;
 end
endmodule