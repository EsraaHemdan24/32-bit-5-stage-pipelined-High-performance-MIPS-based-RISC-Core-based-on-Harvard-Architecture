module Mem_Reg (
input [31:0] ALUOutE , WriteDataE,
input [4:0] WriteRegE,
input CLK , rst , RegWriteE , MemtoRegE , MemWriteE,
output reg [31:0] ALUOutM , WriteDataM,
output reg [4:0] WriteRegM,
output reg RegWriteM , MemtoRegM , MemWriteM 
);
 always @( posedge CLK or negedge rst )
begin
if ( !rst ) begin
ALUOutM <= 32'b0;
WriteDataM <= 32'b0;
WriteRegM <= 5'b0;
RegWriteM <= 1'b0;
MemtoRegM <= 1'b0;
MemWriteM <= 1'b0;
end
else begin
ALUOutM <= ALUOutE;
WriteDataM <= WriteDataE;
WriteRegM <= WriteRegE;
RegWriteM <= RegWriteE;
MemtoRegM <= MemtoRegE;
MemWriteM <= MemWriteE;
end
end

endmodule
