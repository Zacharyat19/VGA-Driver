module parser #(parameter N = 24,parameter M = 4)
                   (input logic [N-1:0] value, 
                    output logic [M-1:0] ones, tens);
						  
  assign ones = (value % 10);
  assign tens = (value / 10);  
endmodule
