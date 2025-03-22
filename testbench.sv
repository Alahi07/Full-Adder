// Code your testbench here
// or browse Examples
module test;
  reg a,b,c_in;
  wire carry,sum;
  fa uut(
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum),
    .carry(carry)
  );
  
  
  
  initial begin
    $dumpfile("fa.vcd");
    $dumpvars(1);
  end
  
  
  
  initial begin
    $monitor ("time=%0t, a=%b, b=%b, c_in=%b, sum=%b,carry=%b",$time,a,b,c_in,sum,carry);
    a=0;b=0;c_in=0;#10;
    a=0;b=0;c_in=1;#10;
    a=0;b=1;c_in=0;#10;
    a=0;b=1;c_in=1;#10;
    a=1;b=0;c_in=0;#10;
    a=1;b=0;c_in=1;#10;
    a=1;b=1;c_in=0;#10;
    a=1;b=1;c_in=1;#10;
    $finish;
  end
  
  
  
endmodule
