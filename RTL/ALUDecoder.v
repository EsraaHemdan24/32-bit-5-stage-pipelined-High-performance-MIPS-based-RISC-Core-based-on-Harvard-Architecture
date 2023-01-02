module ALU_Decoder (
input [5:0] Funct ,
input [1:0] ALUOp,
output reg [2:0] ALUControlD
);

localparam add = 6'b100000,
           sub = 6'b100010,
           And = 6'b100100,
           Or = 6'b100101,
           slt = 6'b101010;

always @ (*) begin
case (ALUOp)
2'b00 : ALUControlD = 010;  //Add for sw,lw
2'b01 : ALUControlD = 110;  //sub for beq
2'b10 : begin   //check the funct field for R-inctruct
case (Funct)
add : ALUControlD = 010;
sub : ALUControlD = 110;
And : ALUControlD = 000;
Or : ALUControlD = 001;
slt : ALUControlD = 111;
default : ALUControlD = 010; //default do add
endcase 
end
default : ALUControlD = 010;
endcase
end

endmodule
