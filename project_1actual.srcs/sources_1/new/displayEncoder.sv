module displayEncoder (
    input  logic [19:0] result,
    output logic [3:0]  numberBits [3:0]
);
    always_comb begin
        numberBits[0] =  result         % 10;  // ones (rightmost display)
        numberBits[1] = (result / 10)   % 10;  // tens
        numberBits[2] = (result / 100)  % 10;  // hundreds
        numberBits[3] = (result / 1000) % 10;  // thousands (leftmost)
    end
endmodule