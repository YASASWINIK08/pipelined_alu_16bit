module pipeline_reg_16(

    input clk,
    input rst,

    input [15:0] din,
    output reg [15:0] dout

);

always @(posedge clk or posedge rst) begin

    if(rst)
        dout <= 16'b0;

    else
        dout <= din;

end

endmodule