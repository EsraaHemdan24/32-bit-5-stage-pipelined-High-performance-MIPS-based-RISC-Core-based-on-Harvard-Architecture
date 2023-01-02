module Equal ( 
input [31:0] in1 , in2,
output EqualD
);

assign EqualD = (in1 == in2);

endmodule
