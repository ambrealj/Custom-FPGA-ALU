module calculator_top (
    input  logic        clk,
    input  logic [3:0]  op1,
    input  logic [3:0]  op2,
    input  logic        operation,
    input  logic        sign,
    output logic [6:0]  segBits,
    output logic [3:0]  trigger
);
    logic [19:0] result;
    logic [3:0]  numberBits  [3:0];
    logic [6:0]  displayBits [3:0];

    miniALU alu (.op1(op1), .op2(op2), .operation(operation),
                 .sign(sign), .result(result));

    displayEncoder enc (.result(result), .numberBits(numberBits));

    sevenSegDigit d0 (.digit(numberBits[0]), .displayBits(displayBits[0]));
    sevenSegDigit d1 (.digit(numberBits[1]), .displayBits(displayBits[1]));
    sevenSegDigit d2 (.digit(numberBits[2]), .displayBits(displayBits[2]));
    sevenSegDigit d3 (.digit(numberBits[3]), .displayBits(displayBits[3]));

    seg_driver DUT0 (.displayBits(displayBits), .clk(clk),
                     .trigger(trigger), .segBits(segBits));
endmodule