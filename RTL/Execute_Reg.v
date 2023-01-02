module Execute_Reg(
input CLR , CLK , rst , RegWriteD , MemtoRegD , MemWriteD , ALUSrcD , RegDstD,
input [2:0] ALUControlD,
input [4:0] rd1D , rd2D , RsD , RtD , RdD,
input [31:0] SignImmD,
output reg [31:0] SignImmE,
output reg [4:0] rd1E , rd2E , RsE , RtE , RdE,
output reg RegWriteE , MemtoRegE , MemWriteE , ALUSrcE , RegDstE,
output reg [2:0] ALUControlE
);

always @( posedge CLK or negedge rst )
begin
if ( CLR | !rst ) begin
SignImmE <= 32'b0;
rd1E <= 32'b0;
rd2E <= 32'b0;
RsE <= 5'b0;
RtE <= 5'b0;
RdE <= 5'b0;
RegWriteE <= 1'b0;
MemtoRegE<= 1'b0;
MemWriteE <=1'b0;
ALUSrcE <= 1'b0;
ALUControlE <= 1'b0;
RegDstE <= 1'b0;
end
else begin
SignImmE <= SignImmD;
rd1E <= rd1D;
rd2E <= rd2D;
RsE <= RsD;
RtE <= RtD;
RdE <= RdD;
RegWriteE <= RegWriteD;
MemtoRegE <= MemtoRegD;
MemWriteE <= MemWriteD;
ALUSrcE <= ALUSrcD;
ALUControlE <= ALUControlD;
RegDstE <= RegDstD;
end
end

endmodule
