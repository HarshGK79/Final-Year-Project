module ALU (
    input  [7:0] A, B,         // 8-bit Inputs
    input  [3:0] opcode,       // 4-bit Operation Code
    output reg [7:0] result,   // 8-bit Result
    output wire overflow,      // Overflow Flag
    output wire negative,      // Negative Flag
    output wire zero           // Zero Flag
);

always @(*) begin
    case (opcode)
        4'b0000: result = A + B;       // Addition
        4'b0001: result = A - B;       // Subtraction
        4'b0010: result = A & B;       // Bitwise AND
        4'b0011: result = A | B;       // Bitwise OR
        4'b0100: result = A ^ B;       // Bitwise XOR
        4'b0101: result = ~A;          // Bitwise NOT (A)
        4'b0110: result = A << 1;      // Logical Shift Left
        4'b0111: result = A >> 1;      // Logical Shift Right
        4'b1000: result = (A < B) ? 8'b1 : 8'b0; // Compare A < B
        default: result = 8'b0;
    endcase
end

// Overflow occurs for signed addition and subtraction
assign overflow = (opcode == 4'b0000) ? (A[7] == B[7]) && (result[7] != A[7]) :
                  (opcode == 4'b0001) ? (A[7] != B[7]) && (result[7] != A[7]) : 1'b0;

// Negative flag: MSB of result
assign negative = result[7];

// Zero flag: result is all zeros
assign zero = (result == 8'b0);

endmodule
