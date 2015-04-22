module mux_4_1_tb();

reg [1:0] sel;
reg [15:0] in00;
reg [15:0] in01;
reg [15:0] in10;
reg [15:0] in11;
wire [15:0] out;    
    
mux_4_1 #(.BUS_WIDTH(16)) uut(.sel(sel),.in00(in00),.in01(in01),.in10(in10),.in11(in11),.out(out));

initial
    begin
    sel = 2'b00;
    in00=16'h5;
    in01=16'hA;
    in10=16'h3;
    in11=16'h2; 
    #10
    sel = 2'b01;
    #10
    sel = 2'b10;
    #10
    sel = 2'b11;
    end        
endmodule