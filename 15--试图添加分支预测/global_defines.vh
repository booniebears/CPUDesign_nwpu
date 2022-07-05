`ifndef MYCPU_H
    `define MYCPU_H
    `define BR_BUS_WD       34 
    //FS_TO_DS_BUS_WDԭ����64,lab8�޸�Ϊ71(����fs_bd,fs_ex,fs_ExcCode)
    `define PS_TO_FS_BUS_WD 40
    `define BPU_TO_PS_BUS_WD 33
    `define BPU_TO_DS_BUS_WD 35
    `define FS_TO_DS_BUS_WD 71
    //DS_TO_ES_BUS_WDԭ����136,lab6�޸�Ϊ137(src2_is_imm��Ϊ2λ��),�޸�Ϊ145(����mf_mt��mult_div)
    //lab7�ٴ��޸�Ϊ157(����mem_control����ͬ�Ĵ�ȡ��ָ��),lab8�޸�Ϊ174(����mfc0,mtc0,eretָ��
    //��mfc0_rd,sel��;����ds_bd,ds_ex,ds_ExcCode,Overflow_inst)
    `define DS_TO_ES_BUS_WD 203
    //ԭΪ70,lab7�޸�Ϊ115,lab8�޸�Ϊ133(����mfc0,mtc0,eretָ���mfc0_rd,sel��;����es_bd,es_ex,es_ExcCode;)
    //lab9�޸�Ϊ165(����data_sram_addr)
    `define ES_TO_M1_BUS_WD 175
    `define BRESULT_WD 69
    `define M1_TO_MS_BUS_WD 161
    //ԭΪ70,lab8�޸�Ϊ88(����mfc0,mtc0,eretָ���mfc0_rd,sel��;����ms_bd,ms_ex,ms_ExcCode)
    //lab9�޸�Ϊ120(����data_sram_addr)
    `define MS_TO_WS_BUS_WD 83
    `define WS_TO_RF_BUS_WD 38
    //CP0�Ĵ�����Ӧ�ĵ�ַ(8λ)
    `define Index_RegAddr    8'h00
    `define Random_RegAddr   8'h08
    `define Entrylo0_RegAddr 8'h10
    `define Entrylo1_RegAddr 8'h18
    `define Context_RegAddr  8'h20
    `define PageMask_RegAddr 8'h28
    `define Wired_RegAddr    8'h30
    `define BadVAddr_RegAddr 8'h40
    `define Count_RegAddr    8'h48
    `define Entryhi_RegAddr  8'h50
    `define Compare_RegAddr  8'h58
    `define Status_RegAddr   8'h60
    `define Cause_RegAddr    8'h68
    `define EPC_RegAddr      8'h70
    `define Prid_RegAddr     8'h78
    `define EBase_RegAddr    8'h79
    `define Config_RegAddr   8'h80
    `define Config1_RegAddr  8'h81
    //ExcCode���뼰���Ӧ�������� Attention:��δӳ�䣬����!
    `define Int                 5'b00000 //�ж�
    `define ITLB_EX_Refill      5'b00010 //TLB����(ȡָ�������)
    `define ITLB_EX_Invalid     5'b00011 //TLB����(ȡָ�������)
    `define DTLB_EX_RD_Refill   5'b00100 //TLB����(ȡָ�������)
    `define DTLB_EX_RD_Invalid  5'b00101 //TLB����(ȡָ�������)
    `define DTLB_EX_WR_Refill   5'b00110 //TLB����(д����)
    `define DTLB_EX_WR_Invalid  5'b00111
    `define DTLB_EX_Modified    5'b01000
    `define AdEL                5'b01001 //��ַ������(������/ȡָ��)
    `define AdES                5'b01010 //��ַ������(д����)
    `define Sys                 5'b01011 //syscallϵͳ��������
    `define Bp                  5'b01100 //break�ϵ�����
    `define RI                  5'b01101 //����ָ��(δ����ָ��)����
    `define Ov                  5'b01110 //�����������
    `define NO_EX               5'b11111 //ʱ���ж�����
    //���帴λ���������
    `define RESET_PC            32'hbfc0_0000
    `define REFILL_EX_PC        32'hbfc0_0200
    `define GENERAL_EX_PC       32'hbfc0_0380
`endif
