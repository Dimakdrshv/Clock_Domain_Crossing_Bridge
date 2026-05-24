`timescale 1ps / 1ps

//===========================================================
// File Path: D:/VivadoProjects/Clock_Domain_Crossing_Bridge/files/sources/HCDCB_TX.v
// Author: 
// Created On: 2026-05-24 23:00:52
// Description: 
//===========================================================


module HCDCB_TX
#(
    parameter DATA_WDT = 8
)
(
    // System signals
    input  wire                    TX_CLK,
    
    // Data bus and data signals
    input  wire [DATA_WDT - 1 : 0] TX_DATA_IN,
    output reg  [DATA_WDT - 1 : 0] TX_DATA_OUT
);
    
    always @(posedge TX_CLK) begin
        TX_DATA_OUT  <= TX_DATA_IN;
    end

endmodule
