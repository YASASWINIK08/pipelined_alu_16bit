module top_alu(

    input clk,
    input rst,

    input [15:0] A,
    input [15:0] B,
    input [2:0] opcode,

    output [15:0] result_out

);



// ============================
// Stage-1 Pipeline Registers
// ============================

wire [15:0] A_reg;
wire [15:0] B_reg;

wire [2:0] opcode_reg;



pipeline_reg_16 reg_A (

    .clk(clk),
    .rst(rst),
    .din(A),
    .dout(A_reg)

);


pipeline_reg_16 reg_B (

    .clk(clk),
    .rst(rst),
    .din(B),
    .dout(B_reg)

);


pipeline_reg_3 reg_opcode (

    .clk(clk),
    .rst(rst),
    .din(opcode),
    .dout(opcode_reg)

);



// ============================
// ALU Core
// ============================

wire [15:0] alu_result;


alu_core alu1 (

    .A(A_reg),
    .B(B_reg),
    .opcode(opcode_reg),
    .result(alu_result)

);



// ============================
// Output Pipeline Register
// ============================

pipeline_reg_16 reg_out (

    .clk(clk),
    .rst(rst),
    .din(alu_result),
    .dout(result_out)

);

endmodule