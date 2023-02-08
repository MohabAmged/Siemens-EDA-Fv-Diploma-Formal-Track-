`timescale 1ns/1ns
`include"Test.v"
module Test_tb;

reg in;
wire out;

test m1 (in,out);

initial begin
$dumpfile("Test_tb.vcd");
$dumpvars (0,Test_Tb);

in=0;
#20;
in=1;
#20;
in=0;
#20;
in=1;
#20;

$display(" Test Complete ");

end

endmodule 