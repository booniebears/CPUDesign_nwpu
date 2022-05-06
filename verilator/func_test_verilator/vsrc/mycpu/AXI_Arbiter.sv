// `include "/mnt/soc_run_os/vsim-func/vsrc/mycpu/CommonDefines.svh"
// `include "/mnt/soc_run_os/vsim-func/vsrc/mycpu/CPU_Defines.svh"
// `include "/mnt/soc_run_os/vsim-func/vsrc/mycpu/AXI_Packed.svh"

/**
 * this implementation is not efficient, since
 * it adds one cycle lantency to all requests.
 */

module BusArbiter #(
    parameter int NUM_INPUTS = 3,  // NOTE: NUM_INPUTS >= 1

    localparam int MAX_INDEX = NUM_INPUTS - 1
) (
    input logic clk, 
    input logic resetn,
    input logic     [MAX_INDEX:0] ivalid,
    input  axi_req  [MAX_INDEX:0] ireqs,
    input  axi_resp oresp,
    output axi_resp [MAX_INDEX:0] iresps,
    output axi_req  oreq
);
    logic busy;
    logic [31:0] select , index ;

    // assign oreq = ireqs[index];
    assign oreq = busy ? ireqs[index - 1] : '0;  // prevent early issue

    // assign selected_req = ireqs[select];

    // select a preferred request
    always_comb begin
        select = 0;
        for (int i = 0; i < NUM_INPUTS; i++) begin
            if (ivalid[i] == 1'b1) begin
                select = i + 1;
                break;
            end
        end
    end

    // feedback to selected request
    always_comb begin
        iresps = '0;

        if (busy) begin
            for (int i = 0; i < NUM_INPUTS; i++) begin
                if (index - 1  == i)
                    iresps[i] = oresp;
            end
        end
    end
 
    always_ff @(posedge clk)
        if (resetn == 1'b0) begin
            {busy, index} <= '0;
        end else begin
            if (busy) begin
                if (ivalid[index - 1] == 1'b0) begin
                    busy  <= '0;
                    index <= '0;
                end
            end else if (select != '0)begin
                // if not valid, busy <= 0
                busy      <= 1'b1;
                index     <= select;
            end
        end

endmodule
