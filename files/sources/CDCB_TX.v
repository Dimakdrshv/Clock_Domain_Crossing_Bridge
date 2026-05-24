`timescale 1ps / 1ps

//===========================================================
// File Path: D:/VivadoProjects/Clock_Domain_Crossing_Bridge/files/sources/CDCB_TX.v
// Author: Kudryashov D.S.
// Created On: 2026-05-23 22:58:18
// Description: 
//===========================================================


module CDCB_TX
#(
    parameter DATA_WDT = 8
)
(
    // System signals
    input  wire                    TX_CLK,
    
    // Data bus and data signals
    input  wire [DATA_WDT - 1 : 0] TX_DATA_IN,
    output reg  [DATA_WDT - 1 : 0] TX_DATA_OUT,
    
    // VALID signal
    output reg                     TX_VALID_OUT,
    input  wire                    TX_VALID_IN
);
    
    always @(posedge TX_CLK) begin
        TX_DATA_OUT  <= TX_DATA_IN;
        TX_VALID_OUT <= TX_VALID_IN;
    end

endmodule
