`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2023 07:29:51 PM
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
    input logic a_i,
    input logic b_i,
    input logic cin_i,
    output logic sum_o,
    output logic cout_o
    );
    
    wire w1,w2,w3;    
    
    half_adder half_adder_0(a_i,b_i,w1,w2);
    half_adder half_adder_1(cin_i,w1, sum_o, w3);
    
    assign cout_o = w2 | w3;
    
endmodule