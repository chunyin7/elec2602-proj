module tri_buf (a, b, enable);
  input a, enable;
  output reg b;

  always @(enable, a, b) begin
    if (enable) begin
      b = a;
    end else begin
      b = 1'bz;
    end
  end
endmodule
