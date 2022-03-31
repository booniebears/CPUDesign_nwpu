`include "Cache_Defines.svh"
`include "CPU_Defines.svh"
`include "CommonDefines.svh"
module WrFlushControl(
    input logic       IFID_Flush_Exception_o ,  //异常产生在IF/ID级的flush 
    input logic       IDEXE_Flush_Exception_o,  //异常产生在ID/EXE级的flush
    input logic       EXEMEM_Flush_Exception_o, //异常产生在EXE/MEM级的flush
    input logic       DH_IF_PCWr_o,             // Load & R型的数据冒险 & （前load 后 store的冒险 —— 以删除）  1代表没有出现该异常，流水线可以流动
    input logic       DH_IF_IDWr_o,             // Load & R型的数据冒险 & （前load 后 store的冒险 —— 以删除）
    input logic       IDEXE_Flush_DataHazard_o, // 数据冒险产生的flush  
    input logic       DIVMULTBusy,              // 乘除法状态机空闲  & 注意需要取反后使用
    input logic [1:0] IsExceptionorEret_o,      // 用于生成HILO的flush信号
    input logic       BranchFailed,             // 分支预测失败时，产生的flush
    input logic       ID_IsAImmeJump,           // ID级 的 J JAL指令
    input logic       Icache_data_ok,           // Icache信号 用于判断IF/ID写使能信号是否可以打开
    input logic       Icache_busy,              // Icache信号 表示Icache是否要暂停流水线
    input logic       Dcache_data_ok,           // Icache信号 用于判断IF/ID写使能信号是否可以打开
    input logic       Dcache_busy,              // Icache信号 表示Icache是否要暂停流水线
      

    output logic      IF_PCWr,
    output logic      IF_IDWr,
    output logic      ID_EXEWr,
    output logic      EXE_MEMWr,
    output logic      MEM_WBWr,
     
    output logic      IFID_Flush,
    output logic      IDEXE_Flush,
    output logic      EXEMEM_Flush,
    output logic      MEMWB_Flush,
    output logic      MEMWB_DisWr,
    output logic      HiLo_Not_Flush,
    output logic      IcacheFlush, //给Icache的Flush
    output logic      DcacheFlush //给Icache的Flush
    

);

    logic Exception;
    // logic BranchFailed;
    // logic DIVMULTBusy;

    assign Exception = IFID_Flush_Exception_o;            // 出现异常
    // assign BranchFailed = IFID_Flush_BranchSolvement_o;   // 为1代表分支预测失败，会产生flush
    // assign DIVMULTBusy = EXE_MULTDIVStall;                // 乘除法器状态机的busy信号（stall为1，时busy信号为1）
    // Icache Flush
    always_comb begin
        if (Exception == `FlushEnable) begin
            IcacheFlush = 1'b1;
        end
        else if (Dcache_busy == `CACHEBUSY || Icache_busy == `CACHEBUSY) begin
            IcacheFlush = 1'b0;
        end
        else if (BranchFailed == `BRANCKFAILED ) begin  // 分支跳转失败，J JAL指令 JALR指令需要给出Icache flush
            IcacheFlush = 1'b1;                                              // 在ID级给出的原因：防止I$ busy，收不进去数据           
        end else begin
            IcacheFlush = 1'b0;
        end
    end
    // Dcache Flush
    always_comb begin
        if (Exception == `FlushEnable) begin
            DcacheFlush = 1'b1;
        end
        else begin
            DcacheFlush = 1'b0;
        end
    end
    // PC_Wr
    always_comb begin
        if (Exception == `FlushEnable) begin
            IF_PCWr   = 1'b1;
        end 
        else if (Dcache_busy == `CACHEBUSY|| Icache_busy == `CACHEBUSY) begin
            IF_PCWr   = 1'b0;
        end
        else if (IDEXE_Flush_DataHazard_o == 1'b1) begin // Icache 的状态影响不到数据冒险的情况
                IF_PCWr = 1'b0;
        end
        else if (BranchFailed == `BRANCKFAILED  ) begin // 在D$空闲的情况下，考虑分支跳转失败，J JAL指令 JALR指令需要给出PC写使能
            IF_PCWr   = 1'b1;
        end
        else begin
            if (DH_IF_PCWr_o == 1'b0 || DIVMULTBusy == 1'b1) begin  // 数据冒险 & 乘除法
                IF_PCWr = 1'b0;
            end
            else begin
                IF_PCWr = 1'b1;
            end
        end
    end
    // IF_IDWR
    always_comb begin
        if (Exception == `FlushEnable) begin
            IF_IDWr   = 1'bx;
        end
        else if (Dcache_busy == `CACHEBUSY|| Icache_busy == `CACHEBUSY) begin
            IF_IDWr   = 1'b0;
        end 
        else if (IDEXE_Flush_DataHazard_o == 1'b1) begin // Icache 的状态影响不到数据冒险的情况
            IF_IDWr = 1'b0;
        end
        else if (BranchFailed == `BRANCKFAILED ) begin // 分支跳转失败, JALR指令需要给出 IF/ID Flush（因此IF/ID写使能不重要）
            IF_IDWr   = 1'b1;
        end
        else if (Icache_busy == `CACHEBUSY && ID_IsAImmeJump == 1'b1) begin  // J JAL指令(在ID级跳转的指令) 需要给出IF/IDWR
            IF_IDWr   = 1'b0;
        end
        else begin
             if (DH_IF_PCWr_o == 1'b0 || DIVMULTBusy == 1'b1) begin  // 数据冒险 & 乘除法
                IF_IDWr = 1'b0;
            end
            else begin
                IF_IDWr = 1'b1;
            end
        end
    end

    // ID_EXEWR
    always_comb begin
        if (Exception == `FlushEnable) begin
            ID_EXEWr   = 1'bx;
        end 
        else if ( Dcache_busy == `CACHEBUSY|| Icache_busy == `CACHEBUSY) begin  //Dcache busy停滞流水线 ， Icache busy 一个flush+继续流动后续流水线
            ID_EXEWr   = 1'b0;
        end
        // else if (BranchFailed == `BRANCKFAILED) begin
        //     ID_EXEWr   = 1'b1;       // 延迟槽继续流动
        // end
        else begin
             if (DIVMULTBusy == 1'b1) begin  // 数据冒险 & 乘除法
                ID_EXEWr = 1'b0;
            end
            else begin
                ID_EXEWr = 1'b1;
            end
        end
    end

    // EXE_MEMWR
    always_comb begin 
        if (Exception == `FlushEnable) begin
            EXE_MEMWr   = 1'bx;
        end 
        else if ( Dcache_busy == `CACHEBUSY || Icache_busy == `CACHEBUSY) begin  //Dcache busy停滞流水线 ， Icache busy 一个flush+继续流动后续流水线
            EXE_MEMWr   = 1'b0;
        end
        else begin
            EXE_MEMWr   = 1'b1;
        end
    end

    // MEM_WBWr
    always_comb begin
        if (Exception == `FlushEnable) begin
            MEM_WBWr   = 1'b1;  // 异常时MEM_WB写使能始终打开
        end 
        else if ( Dcache_busy == `CACHEBUSY || Icache_busy == `CACHEBUSY) begin   //Dcache busy停滞流水线 ， Icache busy 一个flush+继续流动后续流水线
            MEM_WBWr   = 1'b0;  // 停滞流水线时 wb级数据不能写入RF
        end
        else begin
            MEM_WBWr   = 1'b1;
        end
    end
    // IFID_Flush
    always_comb begin
        if (IFID_Flush_Exception_o == `FlushEnable ) begin
            IFID_Flush = 1'b1;
        end 
        else if (Dcache_busy == `CACHEBUSY || Icache_busy == `CACHEBUSY)begin
            IFID_Flush = 1'b0;
        end
        else if (BranchFailed == 1'b1) begin // Dcache空闲的状态下，才考虑分支失败对应的flush
             IFID_Flush = 1'b1;
        end
        // else if (Icache_busy == `CACHEBUSY ) begin // 策略调整为 Icache busy时，指令继续流动 
        //      IFID_Flush = 1'b1;                   // Dcache busy停滞流水线 ， Icache busy 一个flush+继续流动后续流水线
        // end
        else begin
            IFID_Flush = 1'b0;
        end
    end

    // IDEXE_Flush
    // 对于存在数据冒险的情况，必须等到I & D$不busy的时候，再去考虑Data Hazard 
    always_comb begin
        if (IDEXE_Flush_Exception_o == `FlushEnable) begin
            IDEXE_Flush = 1'b1;
        end 
        else if (Dcache_busy == `CACHEBUSY || Icache_busy == `CACHEBUSY) begin
             IDEXE_Flush = 1'b0;
        end
        else if  (IDEXE_Flush_DataHazard_o == 1'b1) begin   // Dcache 空闲的情况下，才考虑数据冒险的情况 
                IDEXE_Flush = 1'b1;
        end
        else begin
            IDEXE_Flush = 1'b0;
        end
    end

    // EXEMEM_Flush
    always_comb begin
        if (EXEMEM_Flush_Exception_o == `FlushEnable) begin
            EXEMEM_Flush = 1'b1;
        end
        else begin
            EXEMEM_Flush = 1'b0;
        end
    end

    // assign IFID_Flush     =  IFID_Flush_Exception_o  | BranchFailed; 
    // assign IDEXE_Flush    =  IDEXE_Flush_Exception_o | IDEXE_Flush_DataHazard_o;  
    // assign EXEMEM_Flush   =  EXEMEM_Flush_Exception_o;
    always_comb begin
        // if (EXEMEM_Flush_Exception_o == `FlushEnable) begin
        //     MEMWB_Flush = 1'b1;
        // end
        // else begin
        MEMWB_Flush = 1'b0;
        // end
    end

    // Dcache 停滞流水线时 wb级数据不能写入RF
    always_comb begin
        if (EXEMEM_Flush_Exception_o == `FlushEnable)begin  // 异常和D$busy同时出现，不需要关闭RF的写使能
            MEMWB_DisWr =  1'b0;
        end
        else if (Dcache_busy == `CACHEBUSY || Icache_busy == `CACHEBUSY) begin
            MEMWB_DisWr =  1'b1;
        end else begin
            MEMWB_DisWr =  1'b0;
        end
    end

    // HILO的flush
    always_comb begin
        HiLo_Not_Flush =  (IsExceptionorEret_o == `IsNone) ? 1'b1:1'b0;
    end


        // IF_PCWr = (IFID_Flush_Exception_o)? 1: DH_IF_PCWr_o & DIVMULTBusy;    //在load & R型的时候 以及乘除法的时候产生
        // IF_IDWr = DH_IF_IDWr_o & DIVMULTBusy;    //在load & R型的时候 以及乘除法的时候产生
        // ID_EXEWr = ~EXE_MULTDIVStall;
        // EXE_MEMWr = 1;
        // MEM_WBWr = 1;
endmodule