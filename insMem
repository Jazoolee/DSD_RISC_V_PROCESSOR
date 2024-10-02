module insMem(
    input logic [7:0] iMem_addr,
    output logic [31:0] ins
);

    logic [31:0] iMem [511:0];

    initial
        $readmemh("insMem.dump.dat", iMem);

    assign ins = iMem[iMem_addr];

endmodule