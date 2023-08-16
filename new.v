module fa(output S,O, input A,B,C);
  wire t1,t2,t3;
  and(t1,A,B),(t2,B,C),(t3,A,C);
  xor(S,A,B,C);
  or(O,t1,t2,t3);
endmodule

module new;
  reg A,B,C;
  wire S,O;
  fa instance0(S,O,A,B,C);
  initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(1);
    $display("Full Adder \nA B C     S O");
    $monitor(A," ", B, " ", C, "     ",S," ",O);
    A=0;B=0;C=0;
    #1; A=0;B=0;C=1;
    #1; A=0;B=1;C=0;
    #1; A=0;B=1;C=1;
    #1; A=1;B=0;C=0;
    #1; A=1;B=0;C=1;
    #1; A=1;B=1;C=0;
    #1; A=1;B=1;C=1;
    #1;
  end 
endmodule