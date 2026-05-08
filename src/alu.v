// 4-bit ALU Calculator
// Author: Varshith
// Description: Performs ADD, SUB, AND, OR operations

module alu(
    input [3:0] a,        // First 4-bit input
    input [3:0] b,        // Second 4-bit input
    input [1:0] op,       // Operation selector
    output reg [4:0] result, // 5-bit result (extra bit for carry)
    output reg zero       // Zero flag
);

// Operation codes
// op = 00 → ADD
// op = 01 → SUB
// op = 10 → AND
// op = 11 → OR

always @(*)
begin
    case(op)
        2'b00: result = a + b;      // Addition
        2'b01: result = a - b;      // Subtraction
        2'b10: result = a & b;      // AND
        2'b11: result = a | b;      // OR
        default: result = 5'b00000;
    endcase

    // Zero flag
    if(result == 0)
        zero = 1;
    else
        zero = 0;
end

endmodule
