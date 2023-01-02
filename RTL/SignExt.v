module signExtend (
input [15:0] dataIn ,
output [31:0] dataOut
);

assign dataOut = { {(16){dataIn[15]}} , dataIn };

endmodule
