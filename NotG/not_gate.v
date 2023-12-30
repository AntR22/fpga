module not_gate(input wire A, output reg B);

    always @* begin
        // Reverse the single bit
        B = ~A;
    end
endmodule