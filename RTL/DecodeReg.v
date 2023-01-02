module Decode_Reg (
input CLR , EN , CLK , rst,
input [31:0] InstrF , PCPlus4F,
output reg [31:0] InstrD , PCPlus4D
);

always @( posedge CLK or negedge rst )
begin
if ( !rst ) begin
InstrD <= 32'b0;
PCPlus4D <= 32'b0;
end
else if ( CLR & !EN ) begin
InstrD <= 32'b0;
PCPlus4D <= 32'b0;
end
else if ( !EN ) begin
InstrD <= InstrF;
PCPlus4D <= PCPlus4F;
end
end
endmodule
