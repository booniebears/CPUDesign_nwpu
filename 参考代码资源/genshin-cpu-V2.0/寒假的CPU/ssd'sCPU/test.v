module test;
    reg CLK;
    reg Reset;
    mips uut(
    .Clk(CLK),
    .Reset(Reset)
    );

    initial begin
        CLK = 0;
        Reset = 0;
        //#1
        CLK = !CLK;  // 下降沿，使PC先清零
        Reset = 1;  // 清除保持信号
        forever #2
        begin 
             CLK = !CLK;
        end
    end
endmodule
