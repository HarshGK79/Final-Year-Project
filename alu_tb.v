module ALU_tb;
    reg  [7:0] A, B;
    reg  [3:0] opcode;
    wire [7:0] result;
    wire overflow, negative, zero;

    // Instantiate your ALU
    ALU uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .overflow(overflow),
        .negative(negative),
        .zero(zero)
    );

    initial begin
        // Monitor values in the terminal
        $monitor("Time: %0d | A=%d, B=%d, opcode=%b => result=%d | OF=%b, NEG=%b, ZERO=%b", 
                  $time, A, B, opcode, result, overflow, negative, zero);

        // Test addition
        A = 8'd50; B = 8'd20; opcode = 4'b0000; #10;

        // Test subtraction
        A = 8'd100; B = 8'd50; opcode = 4'b0001; #10;

        // Test AND
        A = 8'b11001100; B = 8'b10101010; opcode = 4'b0010; #10;

        // Test OR
        A = 8'b11001100; B = 8'b10101010; opcode = 4'b0011; #10;

        // Test XOR
        A = 8'b11001100; B = 8'b10101010; opcode = 4'b0100; #10;

        // Test NOT
        A = 8'b11110000; B = 8'd0; opcode = 4'b0101; #10;

        // Test shift left
        A = 8'b00001111; B = 8'd0; opcode = 4'b0110; #10;

        // Test shift right
        A = 8'b11110000; B = 8'd0; opcode = 4'b0111; #10;

        // Test compare A < B
        A = 8'd5; B = 8'd10; opcode = 4'b1000; #10;

        // Test zero output
        A = 8'd20; B = 8'd20; opcode = 4'b0001; #10;

        $finish;
    end
endmodule
