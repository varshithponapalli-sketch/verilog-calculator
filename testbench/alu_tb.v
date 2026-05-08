// ALU Testbench
// Author: Varshith
// Description: Tests all operations of 4-bit ALU

module alu_tb;

reg [3:0] a, b;
reg [1:0] op;
wire [4:0] result;
wire zero;

// Instantiate ALU
alu uut(
    .a(a),
    .b(b),
    .op(op),
    .result(result),
    .zero(zero)
);

initial begin
    $display("=================================");
    $display("   4-bit ALU Calculator Test     ");
    $display("=================================");
    $display("A    | B    | OP | Result | Zero");
    $display("---------------------------------");

    // Test ADD
    a=4'b0011; b=4'b0101; op=2'b00; #10;
    $display("%b | %b | %b  |  %b | %b", a, b, op, result, zero);

    // Test SUB
    a=4'b1000; b=4'b0011; op=2'b01; #10;
    $display("%b | %b | %b  |  %b | %b", a, b, op, result, zero);

    // Test AND
    a=4'b1100; b=4'b1010; op=2'b10; #10;
    $display("%b | %b | %b  |  %b | %b", a, b, op, result, zero);

    // Test OR
    a=4'b1100; b=4'b1010; op=2'b11; #10;
    $display("%b | %b | %b  |  %b | %b", a, b, op, result, zero);

    // Test Zero flag
    a=4'b0000; b=4'b0000; op=2'b00; #10;
    $display("%b | %b | %b  |  %b | %b", a, b, op, result, zero);

    $display("=================================");
    $display("        Test Complete!           ");
    $display("=================================");
    $finish;
end

endmodule
