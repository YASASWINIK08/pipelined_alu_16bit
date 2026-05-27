module pipeline_reg_3(

    input clk,
    input rst,

    input [2:0] din,
    output reg [2:0] dout

);

always @(posedge clk or posedge rst) begin

    if(rst)
        dout <= 3'b000;

    else
        dout <= din;

end

endmodule