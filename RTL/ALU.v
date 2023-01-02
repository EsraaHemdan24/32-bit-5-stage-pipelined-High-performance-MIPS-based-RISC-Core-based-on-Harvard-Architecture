module ALU ( 
input [31:0] SrcAE, SrcBE,
input [2:0] ALUControlE,
output reg [31:0] ALUOutE
);

localparam ADD = 3'b010,
           SUB = 3'b110,
           AND = 3'b000,
           OR = 3'b001,
           SLT = 3'b111;

always @ (*) begin 
case (ALUControlE)
ADD : ALUOutE = SrcAE + SrcBE;
SUB : ALUOutE = SrcAE - SrcBE;
AND : ALUOutE = SrcAE & SrcBE;
OR : ALUOutE = SrcAE | SrcBE;
SLT : ALUOutE = (SrcAE < SrcBE);
default : ALUOutE = 0;
endcase
end
endmodule
