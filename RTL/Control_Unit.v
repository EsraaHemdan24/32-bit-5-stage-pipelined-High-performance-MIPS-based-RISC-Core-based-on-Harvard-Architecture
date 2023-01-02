module Control_Unit (
input [5:0] OpCode , Funct,
input EqualD,
output reg [2:0] ALUControlD,
output reg RegWriteD , MemtoRegD , MemWriteD , ALUSrcD , RegDstD , BranchD , jump,
output clearD , PCSrcD
);

assign PCSrcD = BranchD & EqualD;
assign ClearD = jump | PCSrcD;

wire [1:0] ALUOp;

Main_Controller UUT_MC (
.OpCode(OpCode),
.ALUOp(ALUOp),
.RegWriteD(RegWriteD),
.MemtoRegD(MemtoRegD),
.MemWriteD(MemWriteD),
.ALUSrcD(ALUSrcD),
.RegDstD(RegDstD),
.BranchD(BranchD),
.jump(jump)
);

ALU_Decoder UUT_ALUD (
.Funct(Funct),
.ALUOp(ALUOp),
.ALUControlD(ALUControlD)
);

endmodule
