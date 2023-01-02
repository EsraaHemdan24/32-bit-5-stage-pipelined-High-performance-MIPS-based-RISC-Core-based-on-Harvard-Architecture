module Main_Controller (
input [5:0] OpCode,
output reg [1:0] ALUOp,
output reg RegWriteD , MemtoRegD , MemWriteD , ALUSrcD , RegDstD , BranchD , jump
);

localparam lw = 100011,
           sw = 101011,
           Rtype = 000000,
           beq = 000100,
           addi = 001000,
           Jump = 000010;

always @(*) begin
case (OpCode)
lw : begin
ALUOp = 2'b00;
ALUSrcD = 1'b1; //to add sign extended offset
RegDstD = 1'b0;
BranchD = 1'b0;
RegWriteD = 1'b1;
MemtoRegD = 1'b1;
MemWriteD = 1'b0;
jump = 1'b0;
end
sw : begin
ALUOp = 2'b00;
ALUSrcD = 1'b1; //to add sign extended offset
RegDstD = 1'b0; //don't care
BranchD = 1'b0;
RegWriteD = 1'b0;
MemtoRegD = 1'b0; //don't care
MemWriteD = 1'b1;
jump = 1'b0;
end
Rtype : begin
ALUOp = 2'b10;
ALUSrcD = 1'b0; 
RegDstD = 1'b1;
BranchD = 1'b0;
RegWriteD = 1'b1;
MemtoRegD = 1'b0;
MemWriteD = 1'b0;
jump = 1'b0;
end
beq : begin
ALUOp = 2'b01; //to sub both operands
ALUSrcD = 1'b0; 
RegDstD = 1'b0; //don't care
BranchD = 1'b1;
RegWriteD = 1'b0;
MemtoRegD = 1'b0; //don't care
MemWriteD = 1'b0;
jump = 1'b0;
end
addi : begin
ALUOp = 2'b00;
ALUSrcD = 1'b1; 
RegDstD = 1'b0;
BranchD = 1'b0;
RegWriteD = 1'b1;
MemtoRegD = 1'b0;
MemWriteD = 1'b0;
jump = 1'b0;
end
Jump : begin
ALUOp = 2'b00; //don't care
ALUSrcD = 1'b0; //don't care
RegDstD = 1'b1; //don't care
BranchD = 1'b0; //don't care
RegWriteD = 1'b0; 
MemtoRegD = 1'b0; //don't care
MemWriteD = 1'b0;
jump = 1'b1;
end
endcase
end

endmodule
