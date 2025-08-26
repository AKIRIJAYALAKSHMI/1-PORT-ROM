`include "rom.v"
module tb;
reg clk;
reg enable;
reg rst;
reg[3:0] addr;
wire[7:0] outdata;
rom dut(.*);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
  $monitor("Time=%0t | rst=%b enable=%b addr=%b outdata=%h", $time, rst, enable, addr, outdata);


rst=1;enable=0;addr=4'b1001;//reset apply(the output changes only if there is a positive edge of clk or positive edge of reset otherwise it carries previous output)
#20;
rst=0;enable=1;addr=4'b1011;//reset release
#20;
rst=1;enable=0;addr=4'b1101;//reset apply
#20;
rst=0;enable=1;addr=4'b0001;//release
#20;
rst=1;enable=1;addr=4'b1111;//apply
#20;
rst=0;enable=0;addr=4'b0101;//relase
#20;
rst=0;enable=1;addr=4'b1000;
#20;



end
initial begin
#200 $finish;
end
endmodule

