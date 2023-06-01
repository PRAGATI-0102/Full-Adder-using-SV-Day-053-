`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2023 07:36:28 PM
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();

    logic a_i;
    logic b_i;
    logic cin_i;
    logic sum_o;
    logic cout_o;
    
    logic [2:0] test_bus;
    
    full_adder dut(.*);
    
    initial begin
        test_bus = 3'b000;
        for(int i = 0; i<8; i++)
            begin
                {a_i,b_i,cin_i} = test_bus;
                #10;
                test_bus = test_bus + 1;     
            end
        $finish();
    end
endmodule
