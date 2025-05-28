module reg_bank(clk,en,read_reg,read_data,write_reg,write_data);
  input clk;
  input en;
  input [4:0] write_reg;
  input [31:0] write_data;
  input [4:0] read_reg;
  output reg [31:0] read_data;
  reg [31:0] registers[31:0]; //32x32 Bits
  integer i;
  //Read Always Block
  always @(*)
    begin
      read_data = 32'b0;
      for(i=0; i<32; i++)
        begin
          if(read_reg == i)
            begin
              read_data = registers[i];
            end
        end
    end
  //Write Always Block
  always @(posedge clk)
    begin
      if(en == 1 && write_reg != 0)
        begin
          for(i=1; i<32; i++)
            begin
              if(write_reg == i)
                registers[i] <= write_data;
            end
        end
    end
endmodule
        
        
