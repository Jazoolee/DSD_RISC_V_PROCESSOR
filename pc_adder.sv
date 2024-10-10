module pc_adder(
    input logic clk, reset, isBranch, isJAL, isJALR,
    input logic [31:0] aluOut,
    output logic [31:0] pc
);

    always_ff @(posedge clk) begin
        if (reset) begin
            pc <= 32'b0;        
        end else if(isBranch | isJAL | isJALR) begin
            pc <= pc + aluOut;
        end else begin
            pc <= pc + 4;
        end
    end

endmodule