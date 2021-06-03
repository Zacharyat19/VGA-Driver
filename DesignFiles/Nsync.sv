module Nsync #(parameter N = 11)
					(input logic clk,
                input logic [N-1:0] d,
                     output logic [N-1:0] q);
logic [N-1:0] n1;
always_ff @(posedge clk)
  begin
    n1 <= d; // nonblocking
    q <= n1; // nonblocking
  end
endmodule
