`timescale 1ps / 1ps

//===========================================================
// File Path: D:/VivadoProjects/Clock_Domain_Crossing_Bridge/files/sources/CDCB_RX.v
// Author: Kudryashov D.S.
// Created On: 2026-05-23 23:52:24
// Description: 
//===========================================================


module CDCB_RX
#(
    parameter DATA_WDT = 8
)
(
    // System signals
    input  wire                    RX_CLK,
    
    // Data bus
    input  wire [DATA_WDT - 1 : 0] RX_DATA_IN,
    output wire [DATA_WDT - 1 : 0] RX_DATA_OUT,
    
    // VALID signal
    input  wire                    RX_VALID_IN,
    output wire                    RX_VALID_OUT
);

    reg [1:0] RX_VALID_SYNC;
    reg [DATA_WDT - 1 : 0] RX_DATA_REG;
    
    always @(posedge RX_CLK) begin
        RX_VALID_SYNC <= {RX_VALID_SYNC[0], RX_VALID_IN};
        RX_DATA_REG   <= RX_DATA_IN;
    end
    
    assign RX_DATA_OUT   = RX_VALID_SYNC[1] ? RX_DATA_REG : 8'h00;
    assign RX_VALID_OUT  = RX_VALID_SYNC[1];
    
endmodule
