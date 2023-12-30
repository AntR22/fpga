`timescale 1ns/1ns
`include "not_gate.v"

module not_gate_tb;

  // Parameters
    reg A;
    wire B;
  //Ports

  not_gate  not_gate_inst ( A, B );

  initial begin
    $dumpfile("not_gate_tb.vcd");
    $dumpvars(0, not_gate_tb);

    A = 0;
    #20;

    A = 1;
    #20;

    A = 0;
    #20;
    
    $display("Test complete");
  end
//always #5  clk = ! clk ;

endmodule