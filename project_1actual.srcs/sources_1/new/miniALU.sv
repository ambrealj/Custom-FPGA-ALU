module miniALU (
    input  logic [3:0]  op1,
    input  logic [3:0]  op2,
    input  logic        operation,
    input  logic        sign,
    output logic [19:0] result
);
    logic [19:0] a, b;
    assign a = {16'b0, op1};
    assign b = {16'b0, op2};

    always_comb begin
        if (operation == 1'b0)
            result = (sign == 1'b0) ? (a + b) : (a - b);
        else
            result = (sign == 1'b0) ? (a << op2) : (a >> op2);
    end
endmodule