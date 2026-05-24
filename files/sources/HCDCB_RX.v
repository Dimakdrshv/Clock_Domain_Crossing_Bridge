`timescale 1ps / 1ps

//===========================================================
// File Path: D:/VivadoProjects/Clock_Domain_Crossing_Bridge/files/sources/HCDCB_RX.v
// Author: 
// Created On: 2026-05-24 23:00:55
// Description: 
//===========================================================


module HCDCB_RX
#(
    parameter DATA_WDT = 8
)
(
    // System signals
    input  wire                    RX_CLK,
    
    // Data bus
    input  wire [DATA_WDT - 1 : 0] RX_DATA_IN,
    output wire [DATA_WDT - 1 : 0] RX_DATA_OUT
);

    reg [DATA_WDT - 1 : 0] RX_DATA_REG;
    
    always @(posedge RX_CLK) begin
        RX_DATA_REG <= RX_DATA_IN;
    end
    
    assign RX_DATA_OUT = RX_DATA_REG;

endmodule
