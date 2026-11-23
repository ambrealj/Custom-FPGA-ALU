module sevenSegDigit (
    input  logic [3:0] digit,
    output logic [6:0] displayBits
);
    always_comb begin
        case (digit)
            4'd0: displayBits = 7'b1000000;
            4'd1: displayBits = 7'b1111001;
            4'd2: displayBits = 7'b0100100;
            4'd3: displayBits = 7'b0110000;
            4'd4: displayBits = 7'b0011001;
            4'd5: displayBits = 7'b0010010;
            4'd6: displayBits = 7'b0000010;
            4'd7: displayBits = 7'b1111000;
            4'd8: displayBits = 7'b0000000;
            4'd9: displayBits = 7'b0010000;
            default: displayBits = 7'b1111111;
        endcase
    end
endmodule