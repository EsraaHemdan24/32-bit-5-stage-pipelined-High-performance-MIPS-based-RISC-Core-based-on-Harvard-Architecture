module Data_Mem (
input WE , CLK , rst,
input [31:0] ALUOutM , WriteDataM,   //ALUOutM is the address in the case of lw and sw
output wire [31:0] ReadDataM
);

integer i;
reg [31:0] ROM [63:0];

always @( posedge CLK or negedge rst )
begin
if ( !rst ) begin
for ( i=0 ; i < 64 ; i=i+1 )
ROM [i] <= 32'b0;
end
else if ( WE ) //WriteEnable is 1
ROM [ALUOutM] <= WriteDataM;
end

assign ReadDataM = ROM [ALUOutM]; // Data is read asynchronosly from data memory ( in R-type we don't use memory)

endmodule
