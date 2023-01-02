module WriteBack_Reg (
input CLK , rst , RegWriteM , MemtoRegM,
input [4:0] WriteRegM,
input [31:0] ALUOutM , ReadDataM,
output reg RegWriteW , MemtoRegW,
output reg [4:0] WriteRegW,
output reg [31:0] ALUOutW , ReadDataW
);

always @( posedge CLK or negedge rst )
begin
if ( !rst ) begin
RegWriteW <= 1'b0;
MemtoRegW <= 1'b0;
WriteRegW <= 1'b0;
ALUOutW <= 1'b0;
ReadDataW <= 1'b0;
end
else begin
RegWriteW <= RegWriteM;
MemtoRegW <= MemtoRegM;
WriteRegW <= WriteRegM;
ALUOutW <= ALUOutM;
ReadDataW <= ReadDataM;
end
end

endmodule
