module colorDecoder(input logic[1:0] inColor,
                output logic[3:0] outColor);
always_comb
  case(inColor)
    //                                           
    0:       outColor = 4'b0000;
    1:       outColor = 4'b0101;
    2:       outColor = 4'b1010;
    3:       outColor = 4'b1111;

    default: outColor = 4'b0000;
  endcase
endmodule
