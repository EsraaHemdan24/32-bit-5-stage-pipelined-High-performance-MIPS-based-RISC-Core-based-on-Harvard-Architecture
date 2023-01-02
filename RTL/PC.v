module PC (
input CLK , EN , rst,
input [31:0] PCold,
output reg [31:0] PCF
);

always @( posedge CLK or negedge rst )
begin
if ( !rst )
PCF <= 32'b0;
else if ( !EN )
PCF <= PCold;
end

endmodule
