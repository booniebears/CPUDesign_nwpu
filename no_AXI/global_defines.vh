`ifndef MYCPU_H
    `define MYCPU_H
    //BR_BUS_WDԭ����33,lab4֮���޸�Ϊ34(������br_stall),lab8�޸�Ϊ35(����is_branch)
    `define BR_BUS_WD       35 
    //FS_TO_DS_BUS_WDԭ����64,lab8�޸�Ϊ71(����fs_bd,fs_ex,fs_ExcCode)
    `define FS_TO_DS_BUS_WD 71
    //DS_TO_ES_BUS_WDԭ����136,lab6�޸�Ϊ137(src2_is_imm��Ϊ2λ��),�޸�Ϊ145(����mf_mt��mult_div)
    //lab7�ٴ��޸�Ϊ157(���mem_control����ͬ�Ĵ�ȡ��ָ��),lab8�޸�Ϊ174(����mfc0,mtc0,eretָ��
    //��mfc0_rd,sel��;����ds_bd,ds_ex,ds_ExcCode,Overflow_inst)
    `define DS_TO_ES_BUS_WD 182
    //ԭΪ70,lab7�޸�Ϊ115,lab8�޸�Ϊ133(����mfc0,mtc0,eretָ���mfc0_rd,sel��;����es_bd,es_ex,es_ExcCode;)
    //lab9�޸�Ϊ165(����data_sram_addr)
    `define ES_TO_MS_BUS_WD 169
    //ԭΪ70,lab8�޸�Ϊ88(����mfc0,mtc0,eretָ���mfc0_rd,sel��;����ms_bd,ms_ex,ms_ExcCode)
    //lab9�޸�Ϊ120(����data_sram_addr)
    `define MS_TO_WS_BUS_WD 124
    `define WS_TO_RF_BUS_WD 38
    //CP0�Ĵ�����Ӧ�ĵ�ַ(8λ)
    `define BadVAddr_RegAddr 8'h40
    `define Count_RegAddr    8'h48
    `define Compare_RegAddr  8'h58
    `define Status_RegAddr   8'h60
    `define Cause_RegAddr    8'h68
    `define EPC_RegAddr      8'h70
    `define Entryhi_RegAddr  8'h78
    `define Entrylo0_RegAddr 8'h80
    `define Entrylo1_RegAddr 8'h88
    `define Index_RegAddr    8'h90
    //ExcCode���뼰���Ӧ��������
    `define Int  5'b00000 //�ж�
    `define Mod  5'b00001 //ģ�����
    `define TLBL 5'b00010 //ȡֵ�������
    `define TLBS 5'b00011 //д����
    `define AdEL 5'b00100 //��ַ������(������/ȡָ��)
    `define AdES 5'b00101 //��ַ������(д����)
    `define Sys  5'b01000 //syscallϵͳ��������
    `define Bp   5'b01001 //break�ϵ�����
    `define RI   5'b01010 //����ָ��(δ����ָ��)����
    `define Ov   5'b01100 //�����������

`endif
