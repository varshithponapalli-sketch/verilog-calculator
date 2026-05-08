// 4-bit Subtractor
// Author: Varshith
// Description: Subtracts two 4-bit numbers using 2's complement

module full_subtractor(
    input a,
    input b,
    input bin,
    output diff,
    output bout
);

assign diff = a ^ b ^ bin;
assign bout = (~a & b) | (~a & bin) | (b & bin);

endmodule


module subtractor_4bit(
    input [3:0] a,
    input [3:0] b,
    output [3:0] diff,
    output bout
);

wire b1, b2, b3;

// Chaining 4 full subtractors
full_subtractor fs0(a[0], b[0], 1'b0, diff[0], b1);
full_subtractor fs1(a[1], b[1], b1,   diff[1], b2);
full_subtractor fs2(a[2], b[2], b2,   diff[2], b3);
full_subtractor fs3(a[3], b[3], b3,   diff[3], bout);

endmodule
