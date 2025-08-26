module rom(clk,rst,addr,enable,outdata);
input clk,rst,enable;
input [3:0]addr;
reg[7:0]mem[15:0];
output reg [7:0]outdata;
always @(posedge clk or negedge rst)
begin
if (rst)
outdata<=8'b0;
else
begin
if (enable)
outdata<=mem[addr];
else
outdata<=8'bx;
end
end
initial begin
mem[0]=8'b0;
mem[1]=8'b1;
mem[2]=8'b10;
mem[3]=8'b11;
mem[4]=8'b100;
mem[5]=8'b101;
mem[6]=8'b110;
mem[7]=8'b111;
mem[8]=8'b1000;
mem[9]=8'b1001;
mem[10]=8'b1010;
mem[11]=8'b1011;
mem[12]=8'b1100;
mem[13]=8'b1101;
mem[14]=8'b1110;
mem[15]=8'b1111;
end

endmodule
