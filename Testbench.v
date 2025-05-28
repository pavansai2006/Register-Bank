module reg_bank_testbench();
  reg clk;
  reg en;
  reg [4:0] write_reg;
  reg [31:0] write_data;
  reg [4:0] read_reg;
  wire [31:0] read_data;
  reg_bank RB(clk,en,read_reg,read_data,write_reg,write_data);
  initial
    begin
      clk = 0;
      forever #5 clk=~clk;
    end
  initial
    begin
      $dumpfile("regbank.vcd");
      $dumpvars(0,reg_bank_testbench);
      $monitor("Time: %0t | EN=%b | WR_REG=%0d | WR_DATA=%0d | RD_REG=%0d | RD_DATA=%0d",$time, en, write_reg, write_data, read_reg, read_data);
    end
  initial
    begin
      clk = 0;
      en = 0;
      write_reg = 0;
      write_data = 0;
      read_reg = 0;
      
      #10 en = 1;
      write_reg = 5'd15;
      write_data = 32'd1515;
      
      #10 write_reg = 5'd0;
      write_data = 32'd999;
      
      #10 write_reg = 5'd10;
      write_data = 32'd111;
      
      #10 en = 0;
      write_reg = 5'd5;
      write_data = 32'd6969;
      
      #10 read_reg = 5'd15;
      #10 read_reg = 5'd0;
      #10 read_reg = 5'd10;
      #10 read_reg = 5'd5;
      
    #20 $finish;
    end
endmodule
      
