module bus_reg (en, out, in, clk, rst);
  input [15:0] in;
  input en, clk, rst;
  output [15:0] out;

  wire [15:0] q_to_a;
  d_ff register (.D(in), .Q(q_to_a), .clk(clk), .rst(rst));
  tri_buf tri_buf (.a(q_to_a), .b(out), .enable(en));
endmodule
