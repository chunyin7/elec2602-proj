module reg_decoder(reg_code, enable);
  input [2:0] reg_code;
  output reg [4:0] enable;

  always @(*) begin 
    case (reg_code)
      3'b000:  enable = 5'b00001; // r0
      3'b001:  enable = 5'b00010; // r1
      3'b010:  enable = 5'b00100; // r2
      3'b011:  enable = 5'b01000; // g
      3'b100:  enable = 5'b10000; // a
      default: enable = 5'b00000; 
    endcase
  end
endmodule

