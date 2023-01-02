module shiftLeftTwice (
input [31:0] dataIn,
output [31:0] dataOut
);

assign dataOut = dataIn<<2;

endmodule
