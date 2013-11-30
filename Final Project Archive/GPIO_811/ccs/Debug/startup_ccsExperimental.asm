;******************************************************************************
;* TMS470 C/C++ Codegen                                             PC v4.9.1 *
;* Date/Time created: Mon Jul 09 16:18:02 2012                                *
;******************************************************************************
	.compiler_opts --abi=eabi --code_state=16 --disable_dual_state --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=7M3 --symdebug:dwarf --symdebug:dwarf_version=2 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../startup_ccsExperimental.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS470 C/C++ Codegen PC v4.9.1 Copyright (c) 1996-2011 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug")
$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("__STACK_TOP")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__STACK_TOP")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$1, DW_AT_decl_column(0x16)
	.global	g_pfnVectors
	.sect	".intvecs"
	.align	4
	.elfsym	g_pfnVectors,SYM_SIZE(240)
g_pfnVectors:
	.field	__STACK_TOP,32		; g_pfnVectors[0] @ 0
	.field	Reset_Handler,32		; g_pfnVectors[1] @ 32
	.field	NMI_Handler,32		; g_pfnVectors[2] @ 64
	.field	HardFault_Handler,32		; g_pfnVectors[3] @ 96
	.field	MemManage_Handler,32		; g_pfnVectors[4] @ 128
	.field	BusFault_Handler,32		; g_pfnVectors[5] @ 160
	.field	UsageFault_Handler,32		; g_pfnVectors[6] @ 192
	.field	0,32			; g_pfnVectors[7] @ 224
	.field	0,32			; g_pfnVectors[8] @ 256
	.field	0,32			; g_pfnVectors[9] @ 288
	.field	0,32			; g_pfnVectors[10] @ 320
	.field	SVC_Handler,32		; g_pfnVectors[11] @ 352
	.field	DebugMon_Handler,32		; g_pfnVectors[12] @ 384
	.field	0,32			; g_pfnVectors[13] @ 416
	.field	PendSV_Handler,32		; g_pfnVectors[14] @ 448
	.field	SysTick_Handler,32		; g_pfnVectors[15] @ 480
	.field	GPIOPortA_Handler,32		; g_pfnVectors[16] @ 512
	.field	GPIOPortB_Handler,32		; g_pfnVectors[17] @ 544
	.field	GPIOPortC_Handler,32		; g_pfnVectors[18] @ 576
	.field	GPIOPortD_Handler,32		; g_pfnVectors[19] @ 608
	.field	GPIOPortE_Handler,32		; g_pfnVectors[20] @ 640
	.field	UART0_Handler,32		; g_pfnVectors[21] @ 672
	.field	UART1_Handler,32		; g_pfnVectors[22] @ 704
	.field	SSI0_Handler,32		; g_pfnVectors[23] @ 736
	.field	I2C0_Handler,32		; g_pfnVectors[24] @ 768
	.field	PWMFault_Handler,32		; g_pfnVectors[25] @ 800
	.field	PWM0_Handler,32		; g_pfnVectors[26] @ 832
	.field	PWM1_Handler,32		; g_pfnVectors[27] @ 864
	.field	PWM2_Handler,32		; g_pfnVectors[28] @ 896
	.field	Quadrature0_Handler,32		; g_pfnVectors[29] @ 928
	.field	ADC0_Handler,32		; g_pfnVectors[30] @ 960
	.field	ADC1_Handler,32		; g_pfnVectors[31] @ 992
	.field	ADC2_Handler,32		; g_pfnVectors[32] @ 1024
	.field	ADC3_Handler,32		; g_pfnVectors[33] @ 1056
	.field	WDT_Handler,32		; g_pfnVectors[34] @ 1088
	.field	Timer0A_Handler,32		; g_pfnVectors[35] @ 1120
	.field	Timer0B_Handler,32		; g_pfnVectors[36] @ 1152
	.field	Timer1A_Handler,32		; g_pfnVectors[37] @ 1184
	.field	Timer1B_Handler,32		; g_pfnVectors[38] @ 1216
	.field	Timer2A_Handler,32		; g_pfnVectors[39] @ 1248
	.field	Timer2B_Handler,32		; g_pfnVectors[40] @ 1280
	.field	Comp0_Handler,32		; g_pfnVectors[41] @ 1312
	.field	Comp1_Handler,32		; g_pfnVectors[42] @ 1344
	.field	Comp2_Handler,32		; g_pfnVectors[43] @ 1376
	.field	SysCtl_Handler,32		; g_pfnVectors[44] @ 1408
	.field	FlashCtl_Handler,32		; g_pfnVectors[45] @ 1440
	.field	GPIOPortF_Handler,32		; g_pfnVectors[46] @ 1472
	.field	GPIOPortG_Handler,32		; g_pfnVectors[47] @ 1504
	.field	GPIOPortH_Handler,32		; g_pfnVectors[48] @ 1536
	.field	UART2_Handler,32		; g_pfnVectors[49] @ 1568
	.field	SSI1_Handler,32		; g_pfnVectors[50] @ 1600
	.field	Timer3A_Handler,32		; g_pfnVectors[51] @ 1632
	.field	Timer3B_Handler,32		; g_pfnVectors[52] @ 1664
	.field	I2C1_Handler,32		; g_pfnVectors[53] @ 1696
	.field	Quadrature1_Handler,32		; g_pfnVectors[54] @ 1728
	.field	CAN0_Handler,32		; g_pfnVectors[55] @ 1760
	.field	CAN1_Handler,32		; g_pfnVectors[56] @ 1792
	.field	CAN2_Handler,32		; g_pfnVectors[57] @ 1824
	.field	Ethernet_Handler,32		; g_pfnVectors[58] @ 1856
	.field	Hibernate_Handler,32		; g_pfnVectors[59] @ 1888

$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("g_pfnVectors")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("g_pfnVectors")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr g_pfnVectors]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x74)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0f)
;	C:\ti\ccsv5\tools\compiler\tms470\bin\acpia470.exe -@C:\\Users\\Valvano\\AppData\\Local\\Temp\\0536812 
	.sect	".text"
	.clink
	.thumbfunc Reset_Handler
	.thumb

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("Reset_Handler")
	.dwattr $C$DW$3, DW_AT_low_pc(Reset_Handler)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("Reset_Handler")
	.dwattr $C$DW$3, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0xc4)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$3, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 197,column 1,is_stmt,address Reset_Handler

	.dwfde $C$DW$CIE, Reset_Handler

;*****************************************************************************
;* FUNCTION NAME: Reset_Handler                                              *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Reset_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 201,column 5,is_stmt
    .global _c_int00
    b.w     _c_int00
	.dwpsn	file "../startup_ccsExperimental.c",line 203,column 1,is_stmt
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return
        BX        LR
        ; BRANCH OCCURS {LR}            
	.dwattr $C$DW$3, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.clink
	.thumbfunc NMI_Handler
	.thumb

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("NMI_Handler")
	.dwattr $C$DW$5, DW_AT_low_pc(NMI_Handler)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("NMI_Handler")
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0xd5)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$5, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 214,column 1,is_stmt,address NMI_Handler

	.dwfde $C$DW$CIE, NMI_Handler

;*****************************************************************************
;* FUNCTION NAME: NMI_Handler                                                *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
NMI_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 218,column 11,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 218
;*   Loop closing brace source line  : 220
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
$C$DW$L$NMI_Handler$2$B:
        B         ||$C$L1||             ; |218| 
        ; BRANCH OCCURS {||$C$L1||}      ; |218| 
$C$DW$L$NMI_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$6	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$6, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L1:1:1341868682")
	.dwattr $C$DW$6, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0xda)
	.dwattr $C$DW$6, DW_AT_TI_end_line(0xdc)
$C$DW$7	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$7, DW_AT_low_pc($C$DW$L$NMI_Handler$2$B)
	.dwattr $C$DW$7, DW_AT_high_pc($C$DW$L$NMI_Handler$2$E)
	.dwendtag $C$DW$6

	.dwattr $C$DW$5, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.thumbfunc HardFault_Handler
	.thumb

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("HardFault_Handler")
	.dwattr $C$DW$8, DW_AT_low_pc(HardFault_Handler)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("HardFault_Handler")
	.dwattr $C$DW$8, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0xe7)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$8, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 232,column 1,is_stmt,address HardFault_Handler

	.dwfde $C$DW$CIE, HardFault_Handler

;*****************************************************************************
;* FUNCTION NAME: HardFault_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
HardFault_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 236,column 11,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 236
;*   Loop closing brace source line  : 238
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
$C$DW$L$HardFault_Handler$2$B:
        B         ||$C$L2||             ; |236| 
        ; BRANCH OCCURS {||$C$L2||}      ; |236| 
$C$DW$L$HardFault_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$9	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$9, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L2:1:1341868682")
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0xec)
	.dwattr $C$DW$9, DW_AT_TI_end_line(0xee)
$C$DW$10	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$10, DW_AT_low_pc($C$DW$L$HardFault_Handler$2$B)
	.dwattr $C$DW$10, DW_AT_high_pc($C$DW$L$HardFault_Handler$2$E)
	.dwendtag $C$DW$9

	.dwattr $C$DW$8, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xef)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.clink
	.thumbfunc MemManage_Handler
	.thumb

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("MemManage_Handler")
	.dwattr $C$DW$11, DW_AT_low_pc(MemManage_Handler)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("MemManage_Handler")
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0xfe)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$11, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 254,column 37,is_stmt,address MemManage_Handler

	.dwfde $C$DW$CIE, MemManage_Handler

;*****************************************************************************
;* FUNCTION NAME: MemManage_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
MemManage_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 254,column 45,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L3||
;*
;*   Loop source line                : 254
;*   Loop closing brace source line  : 254
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L3||:    
$C$DW$L$MemManage_Handler$2$B:
        B         ||$C$L3||             ; |254| 
        ; BRANCH OCCURS {||$C$L3||}      ; |254| 
$C$DW$L$MemManage_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$12	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$12, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L3:1:1341868682")
	.dwattr $C$DW$12, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0xfe)
	.dwattr $C$DW$12, DW_AT_TI_end_line(0xfe)
$C$DW$13	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$13, DW_AT_low_pc($C$DW$L$MemManage_Handler$2$B)
	.dwattr $C$DW$13, DW_AT_high_pc($C$DW$L$MemManage_Handler$2$E)
	.dwendtag $C$DW$12

	.dwattr $C$DW$11, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0xfe)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.thumbfunc BusFault_Handler
	.thumb

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("BusFault_Handler")
	.dwattr $C$DW$14, DW_AT_low_pc(BusFault_Handler)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("BusFault_Handler")
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0xff)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$14, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0xff)
	.dwattr $C$DW$14, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 255,column 36,is_stmt,address BusFault_Handler

	.dwfde $C$DW$CIE, BusFault_Handler

;*****************************************************************************
;* FUNCTION NAME: BusFault_Handler                                           *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
BusFault_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 255,column 44,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;*
;*   Loop source line                : 255
;*   Loop closing brace source line  : 255
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
$C$DW$L$BusFault_Handler$2$B:
        B         ||$C$L4||             ; |255| 
        ; BRANCH OCCURS {||$C$L4||}      ; |255| 
$C$DW$L$BusFault_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$15	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$15, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L4:1:1341868682")
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0xff)
	.dwattr $C$DW$15, DW_AT_TI_end_line(0xff)
$C$DW$16	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$16, DW_AT_low_pc($C$DW$L$BusFault_Handler$2$B)
	.dwattr $C$DW$16, DW_AT_high_pc($C$DW$L$BusFault_Handler$2$E)
	.dwendtag $C$DW$15

	.dwattr $C$DW$14, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0xff)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.thumbfunc UsageFault_Handler
	.thumb

$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("UsageFault_Handler")
	.dwattr $C$DW$17, DW_AT_low_pc(UsageFault_Handler)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("UsageFault_Handler")
	.dwattr $C$DW$17, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0x100)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$17, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x100)
	.dwattr $C$DW$17, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 256,column 38,is_stmt,address UsageFault_Handler

	.dwfde $C$DW$CIE, UsageFault_Handler

;*****************************************************************************
;* FUNCTION NAME: UsageFault_Handler                                         *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
UsageFault_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 256,column 46,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L5||
;*
;*   Loop source line                : 256
;*   Loop closing brace source line  : 256
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L5||:    
$C$DW$L$UsageFault_Handler$2$B:
        B         ||$C$L5||             ; |256| 
        ; BRANCH OCCURS {||$C$L5||}      ; |256| 
$C$DW$L$UsageFault_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$18	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$18, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L5:1:1341868682")
	.dwattr $C$DW$18, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x100)
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x100)
$C$DW$19	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$19, DW_AT_low_pc($C$DW$L$UsageFault_Handler$2$B)
	.dwattr $C$DW$19, DW_AT_high_pc($C$DW$L$UsageFault_Handler$2$E)
	.dwendtag $C$DW$18

	.dwattr $C$DW$17, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x100)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x32)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text"
	.clink
	.thumbfunc SVC_Handler
	.thumb

$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("SVC_Handler")
	.dwattr $C$DW$20, DW_AT_low_pc(SVC_Handler)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("SVC_Handler")
	.dwattr $C$DW$20, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x101)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$20, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x101)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 257,column 33,is_stmt,address SVC_Handler

	.dwfde $C$DW$CIE, SVC_Handler

;*****************************************************************************
;* FUNCTION NAME: SVC_Handler                                                *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
SVC_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 257,column 41,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L6||
;*
;*   Loop source line                : 257
;*   Loop closing brace source line  : 257
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L6||:    
$C$DW$L$SVC_Handler$2$B:
        B         ||$C$L6||             ; |257| 
        ; BRANCH OCCURS {||$C$L6||}      ; |257| 
$C$DW$L$SVC_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$21	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$21, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L6:1:1341868682")
	.dwattr $C$DW$21, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0x101)
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x101)
$C$DW$22	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$22, DW_AT_low_pc($C$DW$L$SVC_Handler$2$B)
	.dwattr $C$DW$22, DW_AT_high_pc($C$DW$L$SVC_Handler$2$E)
	.dwendtag $C$DW$21

	.dwattr $C$DW$20, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x101)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"
	.clink
	.thumbfunc DebugMon_Handler
	.thumb

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugMon_Handler")
	.dwattr $C$DW$23, DW_AT_low_pc(DebugMon_Handler)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("DebugMon_Handler")
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x102)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$23, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x102)
	.dwattr $C$DW$23, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 258,column 36,is_stmt,address DebugMon_Handler

	.dwfde $C$DW$CIE, DebugMon_Handler

;*****************************************************************************
;* FUNCTION NAME: DebugMon_Handler                                           *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
DebugMon_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 258,column 44,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L7||
;*
;*   Loop source line                : 258
;*   Loop closing brace source line  : 258
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L7||:    
$C$DW$L$DebugMon_Handler$2$B:
        B         ||$C$L7||             ; |258| 
        ; BRANCH OCCURS {||$C$L7||}      ; |258| 
$C$DW$L$DebugMon_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$24	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$24, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L7:1:1341868682")
	.dwattr $C$DW$24, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x102)
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x102)
$C$DW$25	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$25, DW_AT_low_pc($C$DW$L$DebugMon_Handler$2$B)
	.dwattr $C$DW$25, DW_AT_high_pc($C$DW$L$DebugMon_Handler$2$E)
	.dwendtag $C$DW$24

	.dwattr $C$DW$23, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x102)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.clink
	.thumbfunc PendSV_Handler
	.thumb
	.weak	PendSV_Handler

$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("PendSV_Handler")
	.dwattr $C$DW$26, DW_AT_low_pc(PendSV_Handler)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("PendSV_Handler")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x105)
	.dwattr $C$DW$26, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$26, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x105)
	.dwattr $C$DW$26, DW_AT_decl_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 261,column 28,is_stmt,address PendSV_Handler

	.dwfde $C$DW$CIE, PendSV_Handler

;*****************************************************************************
;* FUNCTION NAME: PendSV_Handler                                             *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PendSV_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 261,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L8||
;*
;*   Loop source line                : 261
;*   Loop closing brace source line  : 261
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L8||:    
$C$DW$L$PendSV_Handler$2$B:
        B         ||$C$L8||             ; |261| 
        ; BRANCH OCCURS {||$C$L8||}      ; |261| 
$C$DW$L$PendSV_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$27	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$27, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L8:1:1341868682")
	.dwattr $C$DW$27, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x105)
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x105)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$PendSV_Handler$2$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$PendSV_Handler$2$E)
	.dwendtag $C$DW$27

	.dwattr $C$DW$26, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x105)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text"
	.clink
	.thumbfunc SysTick_Handler
	.thumb
	.weak	SysTick_Handler

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("SysTick_Handler")
	.dwattr $C$DW$29, DW_AT_low_pc(SysTick_Handler)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("SysTick_Handler")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x106)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$29, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x106)
	.dwattr $C$DW$29, DW_AT_decl_column(0x06)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 262,column 28,is_stmt,address SysTick_Handler

	.dwfde $C$DW$CIE, SysTick_Handler

;*****************************************************************************
;* FUNCTION NAME: SysTick_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
SysTick_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 262,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L9||
;*
;*   Loop source line                : 262
;*   Loop closing brace source line  : 262
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L9||:    
$C$DW$L$SysTick_Handler$2$B:
        B         ||$C$L9||             ; |262| 
        ; BRANCH OCCURS {||$C$L9||}      ; |262| 
$C$DW$L$SysTick_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$30	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$30, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L9:1:1341868682")
	.dwattr $C$DW$30, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x106)
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x106)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$SysTick_Handler$2$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$SysTick_Handler$2$E)
	.dwendtag $C$DW$30

	.dwattr $C$DW$29, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text"
	.clink
	.thumbfunc IntDefaultHandler
	.thumb
	.weak	IntDefaultHandler

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("IntDefaultHandler")
	.dwattr $C$DW$32, DW_AT_low_pc(IntDefaultHandler)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("IntDefaultHandler")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x107)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x107)
	.dwattr $C$DW$32, DW_AT_decl_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 263,column 30,is_stmt,address IntDefaultHandler

	.dwfde $C$DW$CIE, IntDefaultHandler

;*****************************************************************************
;* FUNCTION NAME: IntDefaultHandler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
IntDefaultHandler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 263,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L10||
;*
;*   Loop source line                : 263
;*   Loop closing brace source line  : 263
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L10||:    
$C$DW$L$IntDefaultHandler$2$B:
        B         ||$C$L10||            ; |263| 
        ; BRANCH OCCURS {||$C$L10||}     ; |263| 
$C$DW$L$IntDefaultHandler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$33	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$33, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L10:1:1341868682")
	.dwattr $C$DW$33, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x107)
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x107)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$IntDefaultHandler$2$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$IntDefaultHandler$2$E)
	.dwendtag $C$DW$33

	.dwattr $C$DW$32, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x107)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.clink
	.thumbfunc GPIOPortA_Handler
	.thumb
	.weak	GPIOPortA_Handler

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortA_Handler")
	.dwattr $C$DW$35, DW_AT_low_pc(GPIOPortA_Handler)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("GPIOPortA_Handler")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x108)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$35, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x108)
	.dwattr $C$DW$35, DW_AT_decl_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 264,column 30,is_stmt,address GPIOPortA_Handler

	.dwfde $C$DW$CIE, GPIOPortA_Handler

;*****************************************************************************
;* FUNCTION NAME: GPIOPortA_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortA_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 264,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L11||
;*
;*   Loop source line                : 264
;*   Loop closing brace source line  : 264
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L11||:    
$C$DW$L$GPIOPortA_Handler$2$B:
        B         ||$C$L11||            ; |264| 
        ; BRANCH OCCURS {||$C$L11||}     ; |264| 
$C$DW$L$GPIOPortA_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$36	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$36, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L11:1:1341868682")
	.dwattr $C$DW$36, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x108)
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x108)
$C$DW$37	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$37, DW_AT_low_pc($C$DW$L$GPIOPortA_Handler$2$B)
	.dwattr $C$DW$37, DW_AT_high_pc($C$DW$L$GPIOPortA_Handler$2$E)
	.dwendtag $C$DW$36

	.dwattr $C$DW$35, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x108)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.clink
	.thumbfunc GPIOPortB_Handler
	.thumb
	.weak	GPIOPortB_Handler

$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortB_Handler")
	.dwattr $C$DW$38, DW_AT_low_pc(GPIOPortB_Handler)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("GPIOPortB_Handler")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0x109)
	.dwattr $C$DW$38, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$38, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x109)
	.dwattr $C$DW$38, DW_AT_decl_column(0x06)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 265,column 30,is_stmt,address GPIOPortB_Handler

	.dwfde $C$DW$CIE, GPIOPortB_Handler

;*****************************************************************************
;* FUNCTION NAME: GPIOPortB_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortB_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 265,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L12||
;*
;*   Loop source line                : 265
;*   Loop closing brace source line  : 265
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L12||:    
$C$DW$L$GPIOPortB_Handler$2$B:
        B         ||$C$L12||            ; |265| 
        ; BRANCH OCCURS {||$C$L12||}     ; |265| 
$C$DW$L$GPIOPortB_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$39	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$39, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L12:1:1341868682")
	.dwattr $C$DW$39, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x109)
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x109)
$C$DW$40	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$40, DW_AT_low_pc($C$DW$L$GPIOPortB_Handler$2$B)
	.dwattr $C$DW$40, DW_AT_high_pc($C$DW$L$GPIOPortB_Handler$2$E)
	.dwendtag $C$DW$39

	.dwattr $C$DW$38, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x109)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text"
	.clink
	.thumbfunc GPIOPortC_Handler
	.thumb
	.weak	GPIOPortC_Handler

$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortC_Handler")
	.dwattr $C$DW$41, DW_AT_low_pc(GPIOPortC_Handler)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("GPIOPortC_Handler")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x10a)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$41, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$41, DW_AT_decl_column(0x06)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 266,column 30,is_stmt,address GPIOPortC_Handler

	.dwfde $C$DW$CIE, GPIOPortC_Handler

;*****************************************************************************
;* FUNCTION NAME: GPIOPortC_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortC_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 266,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L13||
;*
;*   Loop source line                : 266
;*   Loop closing brace source line  : 266
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L13||:    
$C$DW$L$GPIOPortC_Handler$2$B:
        B         ||$C$L13||            ; |266| 
        ; BRANCH OCCURS {||$C$L13||}     ; |266| 
$C$DW$L$GPIOPortC_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$42	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$42, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L13:1:1341868682")
	.dwattr $C$DW$42, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x10a)
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x10a)
$C$DW$43	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$43, DW_AT_low_pc($C$DW$L$GPIOPortC_Handler$2$B)
	.dwattr $C$DW$43, DW_AT_high_pc($C$DW$L$GPIOPortC_Handler$2$E)
	.dwendtag $C$DW$42

	.dwattr $C$DW$41, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x10a)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text"
	.clink
	.thumbfunc GPIOPortD_Handler
	.thumb
	.weak	GPIOPortD_Handler

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortD_Handler")
	.dwattr $C$DW$44, DW_AT_low_pc(GPIOPortD_Handler)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("GPIOPortD_Handler")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x10b)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$44, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$44, DW_AT_decl_column(0x06)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 267,column 30,is_stmt,address GPIOPortD_Handler

	.dwfde $C$DW$CIE, GPIOPortD_Handler

;*****************************************************************************
;* FUNCTION NAME: GPIOPortD_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortD_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 267,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L14||
;*
;*   Loop source line                : 267
;*   Loop closing brace source line  : 267
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L14||:    
$C$DW$L$GPIOPortD_Handler$2$B:
        B         ||$C$L14||            ; |267| 
        ; BRANCH OCCURS {||$C$L14||}     ; |267| 
$C$DW$L$GPIOPortD_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$45	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$45, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L14:1:1341868682")
	.dwattr $C$DW$45, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x10b)
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x10b)
$C$DW$46	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$46, DW_AT_low_pc($C$DW$L$GPIOPortD_Handler$2$B)
	.dwattr $C$DW$46, DW_AT_high_pc($C$DW$L$GPIOPortD_Handler$2$E)
	.dwendtag $C$DW$45

	.dwattr $C$DW$44, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.clink
	.thumbfunc GPIOPortE_Handler
	.thumb
	.weak	GPIOPortE_Handler

$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortE_Handler")
	.dwattr $C$DW$47, DW_AT_low_pc(GPIOPortE_Handler)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("GPIOPortE_Handler")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0x10c)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$47, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$47, DW_AT_decl_column(0x06)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 268,column 30,is_stmt,address GPIOPortE_Handler

	.dwfde $C$DW$CIE, GPIOPortE_Handler

;*****************************************************************************
;* FUNCTION NAME: GPIOPortE_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortE_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 268,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L15||
;*
;*   Loop source line                : 268
;*   Loop closing brace source line  : 268
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L15||:    
$C$DW$L$GPIOPortE_Handler$2$B:
        B         ||$C$L15||            ; |268| 
        ; BRANCH OCCURS {||$C$L15||}     ; |268| 
$C$DW$L$GPIOPortE_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$48	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$48, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L15:1:1341868682")
	.dwattr $C$DW$48, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x10c)
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x10c)
$C$DW$49	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$49, DW_AT_low_pc($C$DW$L$GPIOPortE_Handler$2$B)
	.dwattr $C$DW$49, DW_AT_high_pc($C$DW$L$GPIOPortE_Handler$2$E)
	.dwendtag $C$DW$48

	.dwattr $C$DW$47, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x10c)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text"
	.clink
	.thumbfunc UART0_Handler
	.thumb
	.weak	UART0_Handler

$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("UART0_Handler")
	.dwattr $C$DW$50, DW_AT_low_pc(UART0_Handler)
	.dwattr $C$DW$50, DW_AT_high_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("UART0_Handler")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x10d)
	.dwattr $C$DW$50, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$50, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$50, DW_AT_decl_column(0x06)
	.dwattr $C$DW$50, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 269,column 27,is_stmt,address UART0_Handler

	.dwfde $C$DW$CIE, UART0_Handler

;*****************************************************************************
;* FUNCTION NAME: UART0_Handler                                              *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
UART0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 269,column 35,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L16||
;*
;*   Loop source line                : 269
;*   Loop closing brace source line  : 269
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L16||:    
$C$DW$L$UART0_Handler$2$B:
        B         ||$C$L16||            ; |269| 
        ; BRANCH OCCURS {||$C$L16||}     ; |269| 
$C$DW$L$UART0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$51	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$51, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L16:1:1341868682")
	.dwattr $C$DW$51, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x10d)
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x10d)
$C$DW$52	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$52, DW_AT_low_pc($C$DW$L$UART0_Handler$2$B)
	.dwattr $C$DW$52, DW_AT_high_pc($C$DW$L$UART0_Handler$2$E)
	.dwendtag $C$DW$51

	.dwattr $C$DW$50, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$50, DW_AT_TI_end_column(0x27)
	.dwendentry
	.dwendtag $C$DW$50

	.sect	".text"
	.clink
	.thumbfunc UART1_Handler
	.thumb
	.weak	UART1_Handler

$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("UART1_Handler")
	.dwattr $C$DW$53, DW_AT_low_pc(UART1_Handler)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("UART1_Handler")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$53, DW_AT_TI_begin_line(0x10e)
	.dwattr $C$DW$53, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$53, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$53, DW_AT_decl_column(0x06)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 270,column 27,is_stmt,address UART1_Handler

	.dwfde $C$DW$CIE, UART1_Handler

;*****************************************************************************
;* FUNCTION NAME: UART1_Handler                                              *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
UART1_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 270,column 35,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L17||
;*
;*   Loop source line                : 270
;*   Loop closing brace source line  : 270
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L17||:    
$C$DW$L$UART1_Handler$2$B:
        B         ||$C$L17||            ; |270| 
        ; BRANCH OCCURS {||$C$L17||}     ; |270| 
$C$DW$L$UART1_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$54	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$54, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L17:1:1341868682")
	.dwattr $C$DW$54, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x10e)
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x10e)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$UART1_Handler$2$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$UART1_Handler$2$E)
	.dwendtag $C$DW$54

	.dwattr $C$DW$53, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x10e)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x27)
	.dwendentry
	.dwendtag $C$DW$53

	.sect	".text"
	.clink
	.thumbfunc SSI0_Handler
	.thumb
	.weak	SSI0_Handler

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("SSI0_Handler")
	.dwattr $C$DW$56, DW_AT_low_pc(SSI0_Handler)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("SSI0_Handler")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x10f)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$56, DW_AT_decl_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 271,column 26,is_stmt,address SSI0_Handler

	.dwfde $C$DW$CIE, SSI0_Handler

;*****************************************************************************
;* FUNCTION NAME: SSI0_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
SSI0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 271,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L18||
;*
;*   Loop source line                : 271
;*   Loop closing brace source line  : 271
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L18||:    
$C$DW$L$SSI0_Handler$2$B:
        B         ||$C$L18||            ; |271| 
        ; BRANCH OCCURS {||$C$L18||}     ; |271| 
$C$DW$L$SSI0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$57	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$57, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L18:1:1341868682")
	.dwattr $C$DW$57, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0x10f)
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x10f)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$SSI0_Handler$2$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$SSI0_Handler$2$E)
	.dwendtag $C$DW$57

	.dwattr $C$DW$56, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x10f)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.clink
	.thumbfunc I2C0_Handler
	.thumb
	.weak	I2C0_Handler

$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C0_Handler")
	.dwattr $C$DW$59, DW_AT_low_pc(I2C0_Handler)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("I2C0_Handler")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x110)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$59, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0x110)
	.dwattr $C$DW$59, DW_AT_decl_column(0x06)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 272,column 26,is_stmt,address I2C0_Handler

	.dwfde $C$DW$CIE, I2C0_Handler

;*****************************************************************************
;* FUNCTION NAME: I2C0_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
I2C0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 272,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L19||
;*
;*   Loop source line                : 272
;*   Loop closing brace source line  : 272
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L19||:    
$C$DW$L$I2C0_Handler$2$B:
        B         ||$C$L19||            ; |272| 
        ; BRANCH OCCURS {||$C$L19||}     ; |272| 
$C$DW$L$I2C0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$60	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$60, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L19:1:1341868682")
	.dwattr $C$DW$60, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$60, DW_AT_TI_begin_line(0x110)
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x110)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$I2C0_Handler$2$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$I2C0_Handler$2$E)
	.dwendtag $C$DW$60

	.dwattr $C$DW$59, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text"
	.clink
	.thumbfunc PWMFault_Handler
	.thumb
	.weak	PWMFault_Handler

$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("PWMFault_Handler")
	.dwattr $C$DW$62, DW_AT_low_pc(PWMFault_Handler)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("PWMFault_Handler")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x111)
	.dwattr $C$DW$62, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$62, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$62, DW_AT_decl_line(0x111)
	.dwattr $C$DW$62, DW_AT_decl_column(0x06)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 273,column 29,is_stmt,address PWMFault_Handler

	.dwfde $C$DW$CIE, PWMFault_Handler

;*****************************************************************************
;* FUNCTION NAME: PWMFault_Handler                                           *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PWMFault_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 273,column 37,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L20||
;*
;*   Loop source line                : 273
;*   Loop closing brace source line  : 273
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L20||:    
$C$DW$L$PWMFault_Handler$2$B:
        B         ||$C$L20||            ; |273| 
        ; BRANCH OCCURS {||$C$L20||}     ; |273| 
$C$DW$L$PWMFault_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$63	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$63, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L20:1:1341868682")
	.dwattr $C$DW$63, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x111)
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x111)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$PWMFault_Handler$2$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$PWMFault_Handler$2$E)
	.dwendtag $C$DW$63

	.dwattr $C$DW$62, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x111)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text"
	.clink
	.thumbfunc PWM0_Handler
	.thumb
	.weak	PWM0_Handler

$C$DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("PWM0_Handler")
	.dwattr $C$DW$65, DW_AT_low_pc(PWM0_Handler)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("PWM0_Handler")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0x112)
	.dwattr $C$DW$65, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$65, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0x112)
	.dwattr $C$DW$65, DW_AT_decl_column(0x06)
	.dwattr $C$DW$65, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 274,column 26,is_stmt,address PWM0_Handler

	.dwfde $C$DW$CIE, PWM0_Handler

;*****************************************************************************
;* FUNCTION NAME: PWM0_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PWM0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 274,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L21||
;*
;*   Loop source line                : 274
;*   Loop closing brace source line  : 274
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L21||:    
$C$DW$L$PWM0_Handler$2$B:
        B         ||$C$L21||            ; |274| 
        ; BRANCH OCCURS {||$C$L21||}     ; |274| 
$C$DW$L$PWM0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$66	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$66, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L21:1:1341868682")
	.dwattr $C$DW$66, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0x112)
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x112)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$PWM0_Handler$2$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$PWM0_Handler$2$E)
	.dwendtag $C$DW$66

	.dwattr $C$DW$65, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x112)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$65

	.sect	".text"
	.clink
	.thumbfunc PWM1_Handler
	.thumb
	.weak	PWM1_Handler

$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("PWM1_Handler")
	.dwattr $C$DW$68, DW_AT_low_pc(PWM1_Handler)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("PWM1_Handler")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x113)
	.dwattr $C$DW$68, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$68, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0x113)
	.dwattr $C$DW$68, DW_AT_decl_column(0x06)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 275,column 26,is_stmt,address PWM1_Handler

	.dwfde $C$DW$CIE, PWM1_Handler

;*****************************************************************************
;* FUNCTION NAME: PWM1_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PWM1_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 275,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L22||
;*
;*   Loop source line                : 275
;*   Loop closing brace source line  : 275
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L22||:    
$C$DW$L$PWM1_Handler$2$B:
        B         ||$C$L22||            ; |275| 
        ; BRANCH OCCURS {||$C$L22||}     ; |275| 
$C$DW$L$PWM1_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$69	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$69, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L22:1:1341868682")
	.dwattr $C$DW$69, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x113)
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x113)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$PWM1_Handler$2$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$PWM1_Handler$2$E)
	.dwendtag $C$DW$69

	.dwattr $C$DW$68, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x113)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text"
	.clink
	.thumbfunc PWM2_Handler
	.thumb
	.weak	PWM2_Handler

$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("PWM2_Handler")
	.dwattr $C$DW$71, DW_AT_low_pc(PWM2_Handler)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("PWM2_Handler")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x114)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$71, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$71, DW_AT_decl_line(0x114)
	.dwattr $C$DW$71, DW_AT_decl_column(0x06)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 276,column 26,is_stmt,address PWM2_Handler

	.dwfde $C$DW$CIE, PWM2_Handler

;*****************************************************************************
;* FUNCTION NAME: PWM2_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PWM2_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 276,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L23||
;*
;*   Loop source line                : 276
;*   Loop closing brace source line  : 276
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L23||:    
$C$DW$L$PWM2_Handler$2$B:
        B         ||$C$L23||            ; |276| 
        ; BRANCH OCCURS {||$C$L23||}     ; |276| 
$C$DW$L$PWM2_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$72	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$72, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L23:1:1341868682")
	.dwattr $C$DW$72, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x114)
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x114)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$PWM2_Handler$2$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$PWM2_Handler$2$E)
	.dwendtag $C$DW$72

	.dwattr $C$DW$71, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x114)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.clink
	.thumbfunc Quadrature0_Handler
	.thumb
	.weak	Quadrature0_Handler

$C$DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("Quadrature0_Handler")
	.dwattr $C$DW$74, DW_AT_low_pc(Quadrature0_Handler)
	.dwattr $C$DW$74, DW_AT_high_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("Quadrature0_Handler")
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x115)
	.dwattr $C$DW$74, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$74, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$74, DW_AT_decl_line(0x115)
	.dwattr $C$DW$74, DW_AT_decl_column(0x06)
	.dwattr $C$DW$74, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 277,column 31,is_stmt,address Quadrature0_Handler

	.dwfde $C$DW$CIE, Quadrature0_Handler

;*****************************************************************************
;* FUNCTION NAME: Quadrature0_Handler                                        *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Quadrature0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 277,column 39,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L24||
;*
;*   Loop source line                : 277
;*   Loop closing brace source line  : 277
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L24||:    
$C$DW$L$Quadrature0_Handler$2$B:
        B         ||$C$L24||            ; |277| 
        ; BRANCH OCCURS {||$C$L24||}     ; |277| 
$C$DW$L$Quadrature0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$75	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$75, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L24:1:1341868682")
	.dwattr $C$DW$75, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x115)
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x115)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$Quadrature0_Handler$2$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$Quadrature0_Handler$2$E)
	.dwendtag $C$DW$75

	.dwattr $C$DW$74, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$74, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$74

	.sect	".text"
	.clink
	.thumbfunc ADC0_Handler
	.thumb
	.weak	ADC0_Handler

$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("ADC0_Handler")
	.dwattr $C$DW$77, DW_AT_low_pc(ADC0_Handler)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("ADC0_Handler")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x116)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$77, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0x116)
	.dwattr $C$DW$77, DW_AT_decl_column(0x06)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 278,column 26,is_stmt,address ADC0_Handler

	.dwfde $C$DW$CIE, ADC0_Handler

;*****************************************************************************
;* FUNCTION NAME: ADC0_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ADC0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 278,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L25||
;*
;*   Loop source line                : 278
;*   Loop closing brace source line  : 278
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L25||:    
$C$DW$L$ADC0_Handler$2$B:
        B         ||$C$L25||            ; |278| 
        ; BRANCH OCCURS {||$C$L25||}     ; |278| 
$C$DW$L$ADC0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$78	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$78, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L25:1:1341868682")
	.dwattr $C$DW$78, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x116)
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x116)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$ADC0_Handler$2$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$ADC0_Handler$2$E)
	.dwendtag $C$DW$78

	.dwattr $C$DW$77, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x116)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text"
	.clink
	.thumbfunc ADC1_Handler
	.thumb
	.weak	ADC1_Handler

$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("ADC1_Handler")
	.dwattr $C$DW$80, DW_AT_low_pc(ADC1_Handler)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("ADC1_Handler")
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x117)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$80, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$80, DW_AT_decl_line(0x117)
	.dwattr $C$DW$80, DW_AT_decl_column(0x06)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 279,column 26,is_stmt,address ADC1_Handler

	.dwfde $C$DW$CIE, ADC1_Handler

;*****************************************************************************
;* FUNCTION NAME: ADC1_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ADC1_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 279,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L26||
;*
;*   Loop source line                : 279
;*   Loop closing brace source line  : 279
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L26||:    
$C$DW$L$ADC1_Handler$2$B:
        B         ||$C$L26||            ; |279| 
        ; BRANCH OCCURS {||$C$L26||}     ; |279| 
$C$DW$L$ADC1_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$81	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$81, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L26:1:1341868682")
	.dwattr $C$DW$81, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x117)
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x117)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$ADC1_Handler$2$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$ADC1_Handler$2$E)
	.dwendtag $C$DW$81

	.dwattr $C$DW$80, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x117)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$80

	.sect	".text"
	.clink
	.thumbfunc ADC2_Handler
	.thumb
	.weak	ADC2_Handler

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("ADC2_Handler")
	.dwattr $C$DW$83, DW_AT_low_pc(ADC2_Handler)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("ADC2_Handler")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x118)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$83, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0x118)
	.dwattr $C$DW$83, DW_AT_decl_column(0x06)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 280,column 26,is_stmt,address ADC2_Handler

	.dwfde $C$DW$CIE, ADC2_Handler

;*****************************************************************************
;* FUNCTION NAME: ADC2_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ADC2_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 280,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L27||
;*
;*   Loop source line                : 280
;*   Loop closing brace source line  : 280
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L27||:    
$C$DW$L$ADC2_Handler$2$B:
        B         ||$C$L27||            ; |280| 
        ; BRANCH OCCURS {||$C$L27||}     ; |280| 
$C$DW$L$ADC2_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$84	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$84, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L27:1:1341868682")
	.dwattr $C$DW$84, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x118)
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x118)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$ADC2_Handler$2$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$ADC2_Handler$2$E)
	.dwendtag $C$DW$84

	.dwattr $C$DW$83, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x118)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text"
	.clink
	.thumbfunc ADC3_Handler
	.thumb
	.weak	ADC3_Handler

$C$DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("ADC3_Handler")
	.dwattr $C$DW$86, DW_AT_low_pc(ADC3_Handler)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("ADC3_Handler")
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0x119)
	.dwattr $C$DW$86, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$86, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$86, DW_AT_decl_line(0x119)
	.dwattr $C$DW$86, DW_AT_decl_column(0x06)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 281,column 26,is_stmt,address ADC3_Handler

	.dwfde $C$DW$CIE, ADC3_Handler

;*****************************************************************************
;* FUNCTION NAME: ADC3_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ADC3_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 281,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L28||
;*
;*   Loop source line                : 281
;*   Loop closing brace source line  : 281
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L28||:    
$C$DW$L$ADC3_Handler$2$B:
        B         ||$C$L28||            ; |281| 
        ; BRANCH OCCURS {||$C$L28||}     ; |281| 
$C$DW$L$ADC3_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$87	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$87, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L28:1:1341868682")
	.dwattr $C$DW$87, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x119)
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x119)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$ADC3_Handler$2$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$ADC3_Handler$2$E)
	.dwendtag $C$DW$87

	.dwattr $C$DW$86, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x119)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	".text"
	.clink
	.thumbfunc WDT_Handler
	.thumb
	.weak	WDT_Handler

$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("WDT_Handler")
	.dwattr $C$DW$89, DW_AT_low_pc(WDT_Handler)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("WDT_Handler")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x11a)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$89, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$89, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$89, DW_AT_decl_column(0x06)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 282,column 25,is_stmt,address WDT_Handler

	.dwfde $C$DW$CIE, WDT_Handler

;*****************************************************************************
;* FUNCTION NAME: WDT_Handler                                                *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
WDT_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 282,column 33,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L29||
;*
;*   Loop source line                : 282
;*   Loop closing brace source line  : 282
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L29||:    
$C$DW$L$WDT_Handler$2$B:
        B         ||$C$L29||            ; |282| 
        ; BRANCH OCCURS {||$C$L29||}     ; |282| 
$C$DW$L$WDT_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$90	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$90, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L29:1:1341868682")
	.dwattr $C$DW$90, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0x11a)
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x11a)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$WDT_Handler$2$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$WDT_Handler$2$E)
	.dwendtag $C$DW$90

	.dwattr $C$DW$89, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x25)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.clink
	.thumbfunc Timer0A_Handler
	.thumb
	.weak	Timer0A_Handler

$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("Timer0A_Handler")
	.dwattr $C$DW$92, DW_AT_low_pc(Timer0A_Handler)
	.dwattr $C$DW$92, DW_AT_high_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("Timer0A_Handler")
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$92, DW_AT_TI_begin_line(0x11b)
	.dwattr $C$DW$92, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$92, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$92, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$92, DW_AT_decl_column(0x06)
	.dwattr $C$DW$92, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 283,column 28,is_stmt,address Timer0A_Handler

	.dwfde $C$DW$CIE, Timer0A_Handler

;*****************************************************************************
;* FUNCTION NAME: Timer0A_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Timer0A_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 283,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L30||
;*
;*   Loop source line                : 283
;*   Loop closing brace source line  : 283
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L30||:    
$C$DW$L$Timer0A_Handler$2$B:
        B         ||$C$L30||            ; |283| 
        ; BRANCH OCCURS {||$C$L30||}     ; |283| 
$C$DW$L$Timer0A_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$93	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$93, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L30:1:1341868682")
	.dwattr $C$DW$93, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$93, DW_AT_TI_begin_line(0x11b)
	.dwattr $C$DW$93, DW_AT_TI_end_line(0x11b)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$Timer0A_Handler$2$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$Timer0A_Handler$2$E)
	.dwendtag $C$DW$93

	.dwattr $C$DW$92, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x11b)
	.dwattr $C$DW$92, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$92

	.sect	".text"
	.clink
	.thumbfunc Timer0B_Handler
	.thumb
	.weak	Timer0B_Handler

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("Timer0B_Handler")
	.dwattr $C$DW$95, DW_AT_low_pc(Timer0B_Handler)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("Timer0B_Handler")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$95, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$95, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$95, DW_AT_decl_column(0x06)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 284,column 28,is_stmt,address Timer0B_Handler

	.dwfde $C$DW$CIE, Timer0B_Handler

;*****************************************************************************
;* FUNCTION NAME: Timer0B_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Timer0B_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 284,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L31||
;*
;*   Loop source line                : 284
;*   Loop closing brace source line  : 284
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L31||:    
$C$DW$L$Timer0B_Handler$2$B:
        B         ||$C$L31||            ; |284| 
        ; BRANCH OCCURS {||$C$L31||}     ; |284| 
$C$DW$L$Timer0B_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$96	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$96, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L31:1:1341868682")
	.dwattr $C$DW$96, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x11c)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$Timer0B_Handler$2$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$Timer0B_Handler$2$E)
	.dwendtag $C$DW$96

	.dwattr $C$DW$95, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x11c)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"
	.clink
	.thumbfunc Timer1A_Handler
	.thumb
	.weak	Timer1A_Handler

$C$DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("Timer1A_Handler")
	.dwattr $C$DW$98, DW_AT_low_pc(Timer1A_Handler)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("Timer1A_Handler")
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0x11d)
	.dwattr $C$DW$98, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$98, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$98, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$98, DW_AT_decl_column(0x06)
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 285,column 28,is_stmt,address Timer1A_Handler

	.dwfde $C$DW$CIE, Timer1A_Handler

;*****************************************************************************
;* FUNCTION NAME: Timer1A_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Timer1A_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 285,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L32||
;*
;*   Loop source line                : 285
;*   Loop closing brace source line  : 285
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L32||:    
$C$DW$L$Timer1A_Handler$2$B:
        B         ||$C$L32||            ; |285| 
        ; BRANCH OCCURS {||$C$L32||}     ; |285| 
$C$DW$L$Timer1A_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$99	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$99, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L32:1:1341868682")
	.dwattr $C$DW$99, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x11d)
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x11d)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$Timer1A_Handler$2$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$Timer1A_Handler$2$E)
	.dwendtag $C$DW$99

	.dwattr $C$DW$98, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x11d)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text"
	.clink
	.thumbfunc Timer1B_Handler
	.thumb
	.weak	Timer1B_Handler

$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("Timer1B_Handler")
	.dwattr $C$DW$101, DW_AT_low_pc(Timer1B_Handler)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("Timer1B_Handler")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x11e)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$101, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$101, DW_AT_decl_column(0x06)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 286,column 28,is_stmt,address Timer1B_Handler

	.dwfde $C$DW$CIE, Timer1B_Handler

;*****************************************************************************
;* FUNCTION NAME: Timer1B_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Timer1B_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 286,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L33||
;*
;*   Loop source line                : 286
;*   Loop closing brace source line  : 286
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L33||:    
$C$DW$L$Timer1B_Handler$2$B:
        B         ||$C$L33||            ; |286| 
        ; BRANCH OCCURS {||$C$L33||}     ; |286| 
$C$DW$L$Timer1B_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$102	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$102, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L33:1:1341868682")
	.dwattr $C$DW$102, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x11e)
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x11e)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$Timer1B_Handler$2$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$Timer1B_Handler$2$E)
	.dwendtag $C$DW$102

	.dwattr $C$DW$101, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x11e)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.clink
	.thumbfunc Timer2A_Handler
	.thumb
	.weak	Timer2A_Handler

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("Timer2A_Handler")
	.dwattr $C$DW$104, DW_AT_low_pc(Timer2A_Handler)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("Timer2A_Handler")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x11f)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$104, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$104, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$104, DW_AT_decl_column(0x06)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 287,column 28,is_stmt,address Timer2A_Handler

	.dwfde $C$DW$CIE, Timer2A_Handler

;*****************************************************************************
;* FUNCTION NAME: Timer2A_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Timer2A_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 287,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L34||
;*
;*   Loop source line                : 287
;*   Loop closing brace source line  : 287
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L34||:    
$C$DW$L$Timer2A_Handler$2$B:
        B         ||$C$L34||            ; |287| 
        ; BRANCH OCCURS {||$C$L34||}     ; |287| 
$C$DW$L$Timer2A_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$105	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$105, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L34:1:1341868682")
	.dwattr $C$DW$105, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x11f)
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x11f)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$Timer2A_Handler$2$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$Timer2A_Handler$2$E)
	.dwendtag $C$DW$105

	.dwattr $C$DW$104, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text"
	.clink
	.thumbfunc Timer2B_Handler
	.thumb
	.weak	Timer2B_Handler

$C$DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("Timer2B_Handler")
	.dwattr $C$DW$107, DW_AT_low_pc(Timer2B_Handler)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("Timer2B_Handler")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0x120)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$107, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$107, DW_AT_decl_line(0x120)
	.dwattr $C$DW$107, DW_AT_decl_column(0x06)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 288,column 28,is_stmt,address Timer2B_Handler

	.dwfde $C$DW$CIE, Timer2B_Handler

;*****************************************************************************
;* FUNCTION NAME: Timer2B_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Timer2B_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 288,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L35||
;*
;*   Loop source line                : 288
;*   Loop closing brace source line  : 288
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L35||:    
$C$DW$L$Timer2B_Handler$2$B:
        B         ||$C$L35||            ; |288| 
        ; BRANCH OCCURS {||$C$L35||}     ; |288| 
$C$DW$L$Timer2B_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$108	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$108, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L35:1:1341868682")
	.dwattr $C$DW$108, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x120)
	.dwattr $C$DW$108, DW_AT_TI_end_line(0x120)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$Timer2B_Handler$2$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$Timer2B_Handler$2$E)
	.dwendtag $C$DW$108

	.dwattr $C$DW$107, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x120)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text"
	.clink
	.thumbfunc Comp0_Handler
	.thumb
	.weak	Comp0_Handler

$C$DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("Comp0_Handler")
	.dwattr $C$DW$110, DW_AT_low_pc(Comp0_Handler)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("Comp0_Handler")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$110, DW_AT_TI_begin_line(0x121)
	.dwattr $C$DW$110, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$110, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$110, DW_AT_decl_line(0x121)
	.dwattr $C$DW$110, DW_AT_decl_column(0x06)
	.dwattr $C$DW$110, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 289,column 27,is_stmt,address Comp0_Handler

	.dwfde $C$DW$CIE, Comp0_Handler

;*****************************************************************************
;* FUNCTION NAME: Comp0_Handler                                              *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Comp0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 289,column 35,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L36||
;*
;*   Loop source line                : 289
;*   Loop closing brace source line  : 289
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L36||:    
$C$DW$L$Comp0_Handler$2$B:
        B         ||$C$L36||            ; |289| 
        ; BRANCH OCCURS {||$C$L36||}     ; |289| 
$C$DW$L$Comp0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$111	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$111, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L36:1:1341868682")
	.dwattr $C$DW$111, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x121)
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x121)
$C$DW$112	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$112, DW_AT_low_pc($C$DW$L$Comp0_Handler$2$B)
	.dwattr $C$DW$112, DW_AT_high_pc($C$DW$L$Comp0_Handler$2$E)
	.dwendtag $C$DW$111

	.dwattr $C$DW$110, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x121)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x27)
	.dwendentry
	.dwendtag $C$DW$110

	.sect	".text"
	.clink
	.thumbfunc Comp1_Handler
	.thumb
	.weak	Comp1_Handler

$C$DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("Comp1_Handler")
	.dwattr $C$DW$113, DW_AT_low_pc(Comp1_Handler)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("Comp1_Handler")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x122)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$113, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0x122)
	.dwattr $C$DW$113, DW_AT_decl_column(0x06)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 290,column 27,is_stmt,address Comp1_Handler

	.dwfde $C$DW$CIE, Comp1_Handler

;*****************************************************************************
;* FUNCTION NAME: Comp1_Handler                                              *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Comp1_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 290,column 35,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L37||
;*
;*   Loop source line                : 290
;*   Loop closing brace source line  : 290
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L37||:    
$C$DW$L$Comp1_Handler$2$B:
        B         ||$C$L37||            ; |290| 
        ; BRANCH OCCURS {||$C$L37||}     ; |290| 
$C$DW$L$Comp1_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$114	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$114, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L37:1:1341868682")
	.dwattr $C$DW$114, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0x122)
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x122)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$Comp1_Handler$2$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$Comp1_Handler$2$E)
	.dwendtag $C$DW$114

	.dwattr $C$DW$113, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x122)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x27)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text"
	.clink
	.thumbfunc Comp2_Handler
	.thumb
	.weak	Comp2_Handler

$C$DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("Comp2_Handler")
	.dwattr $C$DW$116, DW_AT_low_pc(Comp2_Handler)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("Comp2_Handler")
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0x123)
	.dwattr $C$DW$116, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$116, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$116, DW_AT_decl_line(0x123)
	.dwattr $C$DW$116, DW_AT_decl_column(0x06)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 291,column 27,is_stmt,address Comp2_Handler

	.dwfde $C$DW$CIE, Comp2_Handler

;*****************************************************************************
;* FUNCTION NAME: Comp2_Handler                                              *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Comp2_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 291,column 35,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L38||
;*
;*   Loop source line                : 291
;*   Loop closing brace source line  : 291
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L38||:    
$C$DW$L$Comp2_Handler$2$B:
        B         ||$C$L38||            ; |291| 
        ; BRANCH OCCURS {||$C$L38||}     ; |291| 
$C$DW$L$Comp2_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$117	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$117, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L38:1:1341868682")
	.dwattr $C$DW$117, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0x123)
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x123)
$C$DW$118	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$118, DW_AT_low_pc($C$DW$L$Comp2_Handler$2$B)
	.dwattr $C$DW$118, DW_AT_high_pc($C$DW$L$Comp2_Handler$2$E)
	.dwendtag $C$DW$117

	.dwattr $C$DW$116, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x123)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x27)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	".text"
	.clink
	.thumbfunc SysCtl_Handler
	.thumb
	.weak	SysCtl_Handler

$C$DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("SysCtl_Handler")
	.dwattr $C$DW$119, DW_AT_low_pc(SysCtl_Handler)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("SysCtl_Handler")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x124)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$119, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$119, DW_AT_decl_line(0x124)
	.dwattr $C$DW$119, DW_AT_decl_column(0x06)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 292,column 28,is_stmt,address SysCtl_Handler

	.dwfde $C$DW$CIE, SysCtl_Handler

;*****************************************************************************
;* FUNCTION NAME: SysCtl_Handler                                             *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
SysCtl_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 292,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L39||
;*
;*   Loop source line                : 292
;*   Loop closing brace source line  : 292
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L39||:    
$C$DW$L$SysCtl_Handler$2$B:
        B         ||$C$L39||            ; |292| 
        ; BRANCH OCCURS {||$C$L39||}     ; |292| 
$C$DW$L$SysCtl_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$120	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$120, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L39:1:1341868682")
	.dwattr $C$DW$120, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x124)
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x124)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$SysCtl_Handler$2$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$SysCtl_Handler$2$E)
	.dwendtag $C$DW$120

	.dwattr $C$DW$119, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text"
	.clink
	.thumbfunc FlashCtl_Handler
	.thumb
	.weak	FlashCtl_Handler

$C$DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("FlashCtl_Handler")
	.dwattr $C$DW$122, DW_AT_low_pc(FlashCtl_Handler)
	.dwattr $C$DW$122, DW_AT_high_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("FlashCtl_Handler")
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0x125)
	.dwattr $C$DW$122, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$122, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$122, DW_AT_decl_line(0x125)
	.dwattr $C$DW$122, DW_AT_decl_column(0x06)
	.dwattr $C$DW$122, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 293,column 29,is_stmt,address FlashCtl_Handler

	.dwfde $C$DW$CIE, FlashCtl_Handler

;*****************************************************************************
;* FUNCTION NAME: FlashCtl_Handler                                           *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
FlashCtl_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 293,column 37,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L40||
;*
;*   Loop source line                : 293
;*   Loop closing brace source line  : 293
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L40||:    
$C$DW$L$FlashCtl_Handler$2$B:
        B         ||$C$L40||            ; |293| 
        ; BRANCH OCCURS {||$C$L40||}     ; |293| 
$C$DW$L$FlashCtl_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$123	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$123, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L40:1:1341868682")
	.dwattr $C$DW$123, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x125)
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x125)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$FlashCtl_Handler$2$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$FlashCtl_Handler$2$E)
	.dwendtag $C$DW$123

	.dwattr $C$DW$122, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x125)
	.dwattr $C$DW$122, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$122

	.sect	".text"
	.clink
	.thumbfunc GPIOPortF_Handler
	.thumb
	.weak	GPIOPortF_Handler

$C$DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortF_Handler")
	.dwattr $C$DW$125, DW_AT_low_pc(GPIOPortF_Handler)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("GPIOPortF_Handler")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x126)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$125, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$125, DW_AT_decl_line(0x126)
	.dwattr $C$DW$125, DW_AT_decl_column(0x06)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 294,column 30,is_stmt,address GPIOPortF_Handler

	.dwfde $C$DW$CIE, GPIOPortF_Handler

;*****************************************************************************
;* FUNCTION NAME: GPIOPortF_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortF_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 294,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L41||
;*
;*   Loop source line                : 294
;*   Loop closing brace source line  : 294
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L41||:    
$C$DW$L$GPIOPortF_Handler$2$B:
        B         ||$C$L41||            ; |294| 
        ; BRANCH OCCURS {||$C$L41||}     ; |294| 
$C$DW$L$GPIOPortF_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$126	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$126, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L41:1:1341868682")
	.dwattr $C$DW$126, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$126, DW_AT_TI_begin_line(0x126)
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x126)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$GPIOPortF_Handler$2$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$GPIOPortF_Handler$2$E)
	.dwendtag $C$DW$126

	.dwattr $C$DW$125, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x126)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"
	.clink
	.thumbfunc GPIOPortG_Handler
	.thumb
	.weak	GPIOPortG_Handler

$C$DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortG_Handler")
	.dwattr $C$DW$128, DW_AT_low_pc(GPIOPortG_Handler)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("GPIOPortG_Handler")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x127)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$128, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$128, DW_AT_decl_line(0x127)
	.dwattr $C$DW$128, DW_AT_decl_column(0x06)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 295,column 30,is_stmt,address GPIOPortG_Handler

	.dwfde $C$DW$CIE, GPIOPortG_Handler

;*****************************************************************************
;* FUNCTION NAME: GPIOPortG_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortG_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 295,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L42||
;*
;*   Loop source line                : 295
;*   Loop closing brace source line  : 295
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L42||:    
$C$DW$L$GPIOPortG_Handler$2$B:
        B         ||$C$L42||            ; |295| 
        ; BRANCH OCCURS {||$C$L42||}     ; |295| 
$C$DW$L$GPIOPortG_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$129	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$129, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L42:1:1341868682")
	.dwattr $C$DW$129, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$129, DW_AT_TI_begin_line(0x127)
	.dwattr $C$DW$129, DW_AT_TI_end_line(0x127)
$C$DW$130	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$130, DW_AT_low_pc($C$DW$L$GPIOPortG_Handler$2$B)
	.dwattr $C$DW$130, DW_AT_high_pc($C$DW$L$GPIOPortG_Handler$2$E)
	.dwendtag $C$DW$129

	.dwattr $C$DW$128, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x127)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text"
	.clink
	.thumbfunc GPIOPortH_Handler
	.thumb
	.weak	GPIOPortH_Handler

$C$DW$131	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortH_Handler")
	.dwattr $C$DW$131, DW_AT_low_pc(GPIOPortH_Handler)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("GPIOPortH_Handler")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$131, DW_AT_TI_begin_line(0x128)
	.dwattr $C$DW$131, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$131, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x128)
	.dwattr $C$DW$131, DW_AT_decl_column(0x06)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 296,column 30,is_stmt,address GPIOPortH_Handler

	.dwfde $C$DW$CIE, GPIOPortH_Handler

;*****************************************************************************
;* FUNCTION NAME: GPIOPortH_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortH_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 296,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L43||
;*
;*   Loop source line                : 296
;*   Loop closing brace source line  : 296
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L43||:    
$C$DW$L$GPIOPortH_Handler$2$B:
        B         ||$C$L43||            ; |296| 
        ; BRANCH OCCURS {||$C$L43||}     ; |296| 
$C$DW$L$GPIOPortH_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$132	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$132, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L43:1:1341868682")
	.dwattr $C$DW$132, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0x128)
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x128)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$GPIOPortH_Handler$2$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$GPIOPortH_Handler$2$E)
	.dwendtag $C$DW$132

	.dwattr $C$DW$131, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x128)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text"
	.clink
	.thumbfunc UART2_Handler
	.thumb
	.weak	UART2_Handler

$C$DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("UART2_Handler")
	.dwattr $C$DW$134, DW_AT_low_pc(UART2_Handler)
	.dwattr $C$DW$134, DW_AT_high_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("UART2_Handler")
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0x129)
	.dwattr $C$DW$134, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$134, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$134, DW_AT_decl_line(0x129)
	.dwattr $C$DW$134, DW_AT_decl_column(0x06)
	.dwattr $C$DW$134, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 297,column 27,is_stmt,address UART2_Handler

	.dwfde $C$DW$CIE, UART2_Handler

;*****************************************************************************
;* FUNCTION NAME: UART2_Handler                                              *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
UART2_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 297,column 35,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L44||
;*
;*   Loop source line                : 297
;*   Loop closing brace source line  : 297
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L44||:    
$C$DW$L$UART2_Handler$2$B:
        B         ||$C$L44||            ; |297| 
        ; BRANCH OCCURS {||$C$L44||}     ; |297| 
$C$DW$L$UART2_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$135	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$135, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L44:1:1341868682")
	.dwattr $C$DW$135, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$135, DW_AT_TI_begin_line(0x129)
	.dwattr $C$DW$135, DW_AT_TI_end_line(0x129)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$UART2_Handler$2$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$UART2_Handler$2$E)
	.dwendtag $C$DW$135

	.dwattr $C$DW$134, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$134, DW_AT_TI_end_line(0x129)
	.dwattr $C$DW$134, DW_AT_TI_end_column(0x27)
	.dwendentry
	.dwendtag $C$DW$134

	.sect	".text"
	.clink
	.thumbfunc SSI1_Handler
	.thumb
	.weak	SSI1_Handler

$C$DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("SSI1_Handler")
	.dwattr $C$DW$137, DW_AT_low_pc(SSI1_Handler)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("SSI1_Handler")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0x12a)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$137, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$137, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$137, DW_AT_decl_column(0x06)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 298,column 26,is_stmt,address SSI1_Handler

	.dwfde $C$DW$CIE, SSI1_Handler

;*****************************************************************************
;* FUNCTION NAME: SSI1_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
SSI1_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 298,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L45||
;*
;*   Loop source line                : 298
;*   Loop closing brace source line  : 298
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L45||:    
$C$DW$L$SSI1_Handler$2$B:
        B         ||$C$L45||            ; |298| 
        ; BRANCH OCCURS {||$C$L45||}     ; |298| 
$C$DW$L$SSI1_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$138	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$138, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L45:1:1341868682")
	.dwattr $C$DW$138, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0x12a)
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x12a)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$SSI1_Handler$2$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$SSI1_Handler$2$E)
	.dwendtag $C$DW$138

	.dwattr $C$DW$137, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x12a)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"
	.clink
	.thumbfunc Timer3A_Handler
	.thumb
	.weak	Timer3A_Handler

$C$DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("Timer3A_Handler")
	.dwattr $C$DW$140, DW_AT_low_pc(Timer3A_Handler)
	.dwattr $C$DW$140, DW_AT_high_pc(0x00)
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("Timer3A_Handler")
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$140, DW_AT_TI_begin_line(0x12b)
	.dwattr $C$DW$140, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$140, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$140, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$140, DW_AT_decl_column(0x06)
	.dwattr $C$DW$140, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 299,column 28,is_stmt,address Timer3A_Handler

	.dwfde $C$DW$CIE, Timer3A_Handler

;*****************************************************************************
;* FUNCTION NAME: Timer3A_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Timer3A_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 299,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L46||
;*
;*   Loop source line                : 299
;*   Loop closing brace source line  : 299
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L46||:    
$C$DW$L$Timer3A_Handler$2$B:
        B         ||$C$L46||            ; |299| 
        ; BRANCH OCCURS {||$C$L46||}     ; |299| 
$C$DW$L$Timer3A_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$141	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$141, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L46:1:1341868682")
	.dwattr $C$DW$141, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$141, DW_AT_TI_begin_line(0x12b)
	.dwattr $C$DW$141, DW_AT_TI_end_line(0x12b)
$C$DW$142	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$142, DW_AT_low_pc($C$DW$L$Timer3A_Handler$2$B)
	.dwattr $C$DW$142, DW_AT_high_pc($C$DW$L$Timer3A_Handler$2$E)
	.dwendtag $C$DW$141

	.dwattr $C$DW$140, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$140, DW_AT_TI_end_line(0x12b)
	.dwattr $C$DW$140, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$140

	.sect	".text"
	.clink
	.thumbfunc Timer3B_Handler
	.thumb
	.weak	Timer3B_Handler

$C$DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("Timer3B_Handler")
	.dwattr $C$DW$143, DW_AT_low_pc(Timer3B_Handler)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("Timer3B_Handler")
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$143, DW_AT_TI_begin_line(0x12c)
	.dwattr $C$DW$143, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$143, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$143, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$143, DW_AT_decl_column(0x06)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 300,column 28,is_stmt,address Timer3B_Handler

	.dwfde $C$DW$CIE, Timer3B_Handler

;*****************************************************************************
;* FUNCTION NAME: Timer3B_Handler                                            *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Timer3B_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 300,column 36,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L47||
;*
;*   Loop source line                : 300
;*   Loop closing brace source line  : 300
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L47||:    
$C$DW$L$Timer3B_Handler$2$B:
        B         ||$C$L47||            ; |300| 
        ; BRANCH OCCURS {||$C$L47||}     ; |300| 
$C$DW$L$Timer3B_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$144	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$144, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L47:1:1341868682")
	.dwattr $C$DW$144, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0x12c)
	.dwattr $C$DW$144, DW_AT_TI_end_line(0x12c)
$C$DW$145	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$145, DW_AT_low_pc($C$DW$L$Timer3B_Handler$2$B)
	.dwattr $C$DW$145, DW_AT_high_pc($C$DW$L$Timer3B_Handler$2$E)
	.dwendtag $C$DW$144

	.dwattr $C$DW$143, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0x12c)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x28)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	".text"
	.clink
	.thumbfunc I2C1_Handler
	.thumb
	.weak	I2C1_Handler

$C$DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C1_Handler")
	.dwattr $C$DW$146, DW_AT_low_pc(I2C1_Handler)
	.dwattr $C$DW$146, DW_AT_high_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("I2C1_Handler")
	.dwattr $C$DW$146, DW_AT_external
	.dwattr $C$DW$146, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$146, DW_AT_TI_begin_line(0x12d)
	.dwattr $C$DW$146, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$146, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$146, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$146, DW_AT_decl_column(0x06)
	.dwattr $C$DW$146, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 301,column 26,is_stmt,address I2C1_Handler

	.dwfde $C$DW$CIE, I2C1_Handler

;*****************************************************************************
;* FUNCTION NAME: I2C1_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
I2C1_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 301,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L48||
;*
;*   Loop source line                : 301
;*   Loop closing brace source line  : 301
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L48||:    
$C$DW$L$I2C1_Handler$2$B:
        B         ||$C$L48||            ; |301| 
        ; BRANCH OCCURS {||$C$L48||}     ; |301| 
$C$DW$L$I2C1_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$147	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$147, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L48:1:1341868682")
	.dwattr $C$DW$147, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$147, DW_AT_TI_begin_line(0x12d)
	.dwattr $C$DW$147, DW_AT_TI_end_line(0x12d)
$C$DW$148	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$148, DW_AT_low_pc($C$DW$L$I2C1_Handler$2$B)
	.dwattr $C$DW$148, DW_AT_high_pc($C$DW$L$I2C1_Handler$2$E)
	.dwendtag $C$DW$147

	.dwattr $C$DW$146, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$146, DW_AT_TI_end_line(0x12d)
	.dwattr $C$DW$146, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$146

	.sect	".text"
	.clink
	.thumbfunc Quadrature1_Handler
	.thumb
	.weak	Quadrature1_Handler

$C$DW$149	.dwtag  DW_TAG_subprogram, DW_AT_name("Quadrature1_Handler")
	.dwattr $C$DW$149, DW_AT_low_pc(Quadrature1_Handler)
	.dwattr $C$DW$149, DW_AT_high_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("Quadrature1_Handler")
	.dwattr $C$DW$149, DW_AT_external
	.dwattr $C$DW$149, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$149, DW_AT_TI_begin_line(0x12e)
	.dwattr $C$DW$149, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$149, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$149, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$149, DW_AT_decl_column(0x06)
	.dwattr $C$DW$149, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 302,column 31,is_stmt,address Quadrature1_Handler

	.dwfde $C$DW$CIE, Quadrature1_Handler

;*****************************************************************************
;* FUNCTION NAME: Quadrature1_Handler                                        *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Quadrature1_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 302,column 39,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L49||
;*
;*   Loop source line                : 302
;*   Loop closing brace source line  : 302
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L49||:    
$C$DW$L$Quadrature1_Handler$2$B:
        B         ||$C$L49||            ; |302| 
        ; BRANCH OCCURS {||$C$L49||}     ; |302| 
$C$DW$L$Quadrature1_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$150	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$150, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L49:1:1341868682")
	.dwattr $C$DW$150, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x12e)
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x12e)
$C$DW$151	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$151, DW_AT_low_pc($C$DW$L$Quadrature1_Handler$2$B)
	.dwattr $C$DW$151, DW_AT_high_pc($C$DW$L$Quadrature1_Handler$2$E)
	.dwendtag $C$DW$150

	.dwattr $C$DW$149, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$149, DW_AT_TI_end_line(0x12e)
	.dwattr $C$DW$149, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$149

	.sect	".text"
	.clink
	.thumbfunc CAN0_Handler
	.thumb
	.weak	CAN0_Handler

$C$DW$152	.dwtag  DW_TAG_subprogram, DW_AT_name("CAN0_Handler")
	.dwattr $C$DW$152, DW_AT_low_pc(CAN0_Handler)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("CAN0_Handler")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0x12f)
	.dwattr $C$DW$152, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$152, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$152, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$152, DW_AT_decl_column(0x06)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 303,column 26,is_stmt,address CAN0_Handler

	.dwfde $C$DW$CIE, CAN0_Handler

;*****************************************************************************
;* FUNCTION NAME: CAN0_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CAN0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 303,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L50||
;*
;*   Loop source line                : 303
;*   Loop closing brace source line  : 303
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L50||:    
$C$DW$L$CAN0_Handler$2$B:
        B         ||$C$L50||            ; |303| 
        ; BRANCH OCCURS {||$C$L50||}     ; |303| 
$C$DW$L$CAN0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$153	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$153, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L50:1:1341868682")
	.dwattr $C$DW$153, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$153, DW_AT_TI_begin_line(0x12f)
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x12f)
$C$DW$154	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$154, DW_AT_low_pc($C$DW$L$CAN0_Handler$2$B)
	.dwattr $C$DW$154, DW_AT_high_pc($C$DW$L$CAN0_Handler$2$E)
	.dwendtag $C$DW$153

	.dwattr $C$DW$152, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x12f)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text"
	.clink
	.thumbfunc CAN1_Handler
	.thumb
	.weak	CAN1_Handler

$C$DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("CAN1_Handler")
	.dwattr $C$DW$155, DW_AT_low_pc(CAN1_Handler)
	.dwattr $C$DW$155, DW_AT_high_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("CAN1_Handler")
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0x130)
	.dwattr $C$DW$155, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$155, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$155, DW_AT_decl_line(0x130)
	.dwattr $C$DW$155, DW_AT_decl_column(0x06)
	.dwattr $C$DW$155, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 304,column 26,is_stmt,address CAN1_Handler

	.dwfde $C$DW$CIE, CAN1_Handler

;*****************************************************************************
;* FUNCTION NAME: CAN1_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CAN1_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 304,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L51||
;*
;*   Loop source line                : 304
;*   Loop closing brace source line  : 304
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L51||:    
$C$DW$L$CAN1_Handler$2$B:
        B         ||$C$L51||            ; |304| 
        ; BRANCH OCCURS {||$C$L51||}     ; |304| 
$C$DW$L$CAN1_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$156	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$156, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L51:1:1341868682")
	.dwattr $C$DW$156, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$156, DW_AT_TI_begin_line(0x130)
	.dwattr $C$DW$156, DW_AT_TI_end_line(0x130)
$C$DW$157	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$157, DW_AT_low_pc($C$DW$L$CAN1_Handler$2$B)
	.dwattr $C$DW$157, DW_AT_high_pc($C$DW$L$CAN1_Handler$2$E)
	.dwendtag $C$DW$156

	.dwattr $C$DW$155, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x130)
	.dwattr $C$DW$155, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$155

	.sect	".text"
	.clink
	.thumbfunc CAN2_Handler
	.thumb
	.weak	CAN2_Handler

$C$DW$158	.dwtag  DW_TAG_subprogram, DW_AT_name("CAN2_Handler")
	.dwattr $C$DW$158, DW_AT_low_pc(CAN2_Handler)
	.dwattr $C$DW$158, DW_AT_high_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("CAN2_Handler")
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$158, DW_AT_TI_begin_line(0x131)
	.dwattr $C$DW$158, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$158, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$158, DW_AT_decl_line(0x131)
	.dwattr $C$DW$158, DW_AT_decl_column(0x06)
	.dwattr $C$DW$158, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 305,column 26,is_stmt,address CAN2_Handler

	.dwfde $C$DW$CIE, CAN2_Handler

;*****************************************************************************
;* FUNCTION NAME: CAN2_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CAN2_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 305,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L52||
;*
;*   Loop source line                : 305
;*   Loop closing brace source line  : 305
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L52||:    
$C$DW$L$CAN2_Handler$2$B:
        B         ||$C$L52||            ; |305| 
        ; BRANCH OCCURS {||$C$L52||}     ; |305| 
$C$DW$L$CAN2_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$159	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$159, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L52:1:1341868682")
	.dwattr $C$DW$159, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$159, DW_AT_TI_begin_line(0x131)
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x131)
$C$DW$160	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$160, DW_AT_low_pc($C$DW$L$CAN2_Handler$2$B)
	.dwattr $C$DW$160, DW_AT_high_pc($C$DW$L$CAN2_Handler$2$E)
	.dwendtag $C$DW$159

	.dwattr $C$DW$158, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x131)
	.dwattr $C$DW$158, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$158

	.sect	".text"
	.clink
	.thumbfunc Ethernet_Handler
	.thumb
	.weak	Ethernet_Handler

$C$DW$161	.dwtag  DW_TAG_subprogram, DW_AT_name("Ethernet_Handler")
	.dwattr $C$DW$161, DW_AT_low_pc(Ethernet_Handler)
	.dwattr $C$DW$161, DW_AT_high_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("Ethernet_Handler")
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$161, DW_AT_TI_begin_line(0x132)
	.dwattr $C$DW$161, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$161, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$161, DW_AT_decl_line(0x132)
	.dwattr $C$DW$161, DW_AT_decl_column(0x06)
	.dwattr $C$DW$161, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 306,column 29,is_stmt,address Ethernet_Handler

	.dwfde $C$DW$CIE, Ethernet_Handler

;*****************************************************************************
;* FUNCTION NAME: Ethernet_Handler                                           *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Ethernet_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 306,column 37,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L53||
;*
;*   Loop source line                : 306
;*   Loop closing brace source line  : 306
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L53||:    
$C$DW$L$Ethernet_Handler$2$B:
        B         ||$C$L53||            ; |306| 
        ; BRANCH OCCURS {||$C$L53||}     ; |306| 
$C$DW$L$Ethernet_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$162	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$162, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L53:1:1341868682")
	.dwattr $C$DW$162, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$162, DW_AT_TI_begin_line(0x132)
	.dwattr $C$DW$162, DW_AT_TI_end_line(0x132)
$C$DW$163	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$163, DW_AT_low_pc($C$DW$L$Ethernet_Handler$2$B)
	.dwattr $C$DW$163, DW_AT_high_pc($C$DW$L$Ethernet_Handler$2$E)
	.dwendtag $C$DW$162

	.dwattr $C$DW$161, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$161, DW_AT_TI_end_line(0x132)
	.dwattr $C$DW$161, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$161

	.sect	".text"
	.clink
	.thumbfunc Hibernate_Handler
	.thumb
	.weak	Hibernate_Handler

$C$DW$164	.dwtag  DW_TAG_subprogram, DW_AT_name("Hibernate_Handler")
	.dwattr $C$DW$164, DW_AT_low_pc(Hibernate_Handler)
	.dwattr $C$DW$164, DW_AT_high_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("Hibernate_Handler")
	.dwattr $C$DW$164, DW_AT_external
	.dwattr $C$DW$164, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$164, DW_AT_TI_begin_line(0x133)
	.dwattr $C$DW$164, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$164, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$164, DW_AT_decl_line(0x133)
	.dwattr $C$DW$164, DW_AT_decl_column(0x06)
	.dwattr $C$DW$164, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 307,column 30,is_stmt,address Hibernate_Handler

	.dwfde $C$DW$CIE, Hibernate_Handler

;*****************************************************************************
;* FUNCTION NAME: Hibernate_Handler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Hibernate_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 307,column 38,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L54||
;*
;*   Loop source line                : 307
;*   Loop closing brace source line  : 307
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L54||:    
$C$DW$L$Hibernate_Handler$2$B:
        B         ||$C$L54||            ; |307| 
        ; BRANCH OCCURS {||$C$L54||}     ; |307| 
$C$DW$L$Hibernate_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$165	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$165, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L54:1:1341868682")
	.dwattr $C$DW$165, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x133)
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x133)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$Hibernate_Handler$2$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$Hibernate_Handler$2$E)
	.dwendtag $C$DW$165

	.dwattr $C$DW$164, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$164, DW_AT_TI_end_line(0x133)
	.dwattr $C$DW$164, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$164

	.sect	".text"
	.clink
	.thumbfunc USB0_Handler
	.thumb
	.weak	USB0_Handler

$C$DW$167	.dwtag  DW_TAG_subprogram, DW_AT_name("USB0_Handler")
	.dwattr $C$DW$167, DW_AT_low_pc(USB0_Handler)
	.dwattr $C$DW$167, DW_AT_high_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("USB0_Handler")
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x134)
	.dwattr $C$DW$167, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$167, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$167, DW_AT_decl_line(0x134)
	.dwattr $C$DW$167, DW_AT_decl_column(0x06)
	.dwattr $C$DW$167, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 308,column 26,is_stmt,address USB0_Handler

	.dwfde $C$DW$CIE, USB0_Handler

;*****************************************************************************
;* FUNCTION NAME: USB0_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
USB0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 308,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L55||
;*
;*   Loop source line                : 308
;*   Loop closing brace source line  : 308
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L55||:    
$C$DW$L$USB0_Handler$2$B:
        B         ||$C$L55||            ; |308| 
        ; BRANCH OCCURS {||$C$L55||}     ; |308| 
$C$DW$L$USB0_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$168	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$168, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L55:1:1341868682")
	.dwattr $C$DW$168, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$168, DW_AT_TI_begin_line(0x134)
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x134)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$USB0_Handler$2$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$USB0_Handler$2$E)
	.dwendtag $C$DW$168

	.dwattr $C$DW$167, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x134)
	.dwattr $C$DW$167, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$167

	.sect	".text"
	.clink
	.thumbfunc PWM3_Handler
	.thumb
	.weak	PWM3_Handler

$C$DW$170	.dwtag  DW_TAG_subprogram, DW_AT_name("PWM3_Handler")
	.dwattr $C$DW$170, DW_AT_low_pc(PWM3_Handler)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("PWM3_Handler")
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0x135)
	.dwattr $C$DW$170, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$170, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$170, DW_AT_decl_line(0x135)
	.dwattr $C$DW$170, DW_AT_decl_column(0x06)
	.dwattr $C$DW$170, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 309,column 26,is_stmt,address PWM3_Handler

	.dwfde $C$DW$CIE, PWM3_Handler

;*****************************************************************************
;* FUNCTION NAME: PWM3_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
PWM3_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 309,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L56||
;*
;*   Loop source line                : 309
;*   Loop closing brace source line  : 309
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L56||:    
$C$DW$L$PWM3_Handler$2$B:
        B         ||$C$L56||            ; |309| 
        ; BRANCH OCCURS {||$C$L56||}     ; |309| 
$C$DW$L$PWM3_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$171	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$171, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L56:1:1341868682")
	.dwattr $C$DW$171, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$171, DW_AT_TI_begin_line(0x135)
	.dwattr $C$DW$171, DW_AT_TI_end_line(0x135)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$PWM3_Handler$2$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$PWM3_Handler$2$E)
	.dwendtag $C$DW$171

	.dwattr $C$DW$170, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x135)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$170

	.sect	".text"
	.clink
	.thumbfunc uDMA_Handler
	.thumb
	.weak	uDMA_Handler

$C$DW$173	.dwtag  DW_TAG_subprogram, DW_AT_name("uDMA_Handler")
	.dwattr $C$DW$173, DW_AT_low_pc(uDMA_Handler)
	.dwattr $C$DW$173, DW_AT_high_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("uDMA_Handler")
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$173, DW_AT_TI_begin_line(0x136)
	.dwattr $C$DW$173, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$173, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$173, DW_AT_decl_line(0x136)
	.dwattr $C$DW$173, DW_AT_decl_column(0x06)
	.dwattr $C$DW$173, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 310,column 26,is_stmt,address uDMA_Handler

	.dwfde $C$DW$CIE, uDMA_Handler

;*****************************************************************************
;* FUNCTION NAME: uDMA_Handler                                               *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
uDMA_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 310,column 34,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L57||
;*
;*   Loop source line                : 310
;*   Loop closing brace source line  : 310
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L57||:    
$C$DW$L$uDMA_Handler$2$B:
        B         ||$C$L57||            ; |310| 
        ; BRANCH OCCURS {||$C$L57||}     ; |310| 
$C$DW$L$uDMA_Handler$2$E:
;* --------------------------------------------------------------------------*

$C$DW$174	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$174, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L57:1:1341868682")
	.dwattr $C$DW$174, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$174, DW_AT_TI_begin_line(0x136)
	.dwattr $C$DW$174, DW_AT_TI_end_line(0x136)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$uDMA_Handler$2$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$uDMA_Handler$2$E)
	.dwendtag $C$DW$174

	.dwattr $C$DW$173, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$173, DW_AT_TI_end_line(0x136)
	.dwattr $C$DW$173, DW_AT_TI_end_column(0x26)
	.dwendentry
	.dwendtag $C$DW$173

	.sect	".text"
	.clink
	.thumbfunc uDMA_Error
	.thumb
	.weak	uDMA_Error

$C$DW$176	.dwtag  DW_TAG_subprogram, DW_AT_name("uDMA_Error")
	.dwattr $C$DW$176, DW_AT_low_pc(uDMA_Error)
	.dwattr $C$DW$176, DW_AT_high_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("uDMA_Error")
	.dwattr $C$DW$176, DW_AT_external
	.dwattr $C$DW$176, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$176, DW_AT_TI_begin_line(0x137)
	.dwattr $C$DW$176, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$176, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$176, DW_AT_decl_line(0x137)
	.dwattr $C$DW$176, DW_AT_decl_column(0x06)
	.dwattr $C$DW$176, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 311,column 25,is_stmt,address uDMA_Error

	.dwfde $C$DW$CIE, uDMA_Error

;*****************************************************************************
;* FUNCTION NAME: uDMA_Error                                                 *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
uDMA_Error:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 311,column 33,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L58||
;*
;*   Loop source line                : 311
;*   Loop closing brace source line  : 311
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L58||:    
$C$DW$L$uDMA_Error$2$B:
        B         ||$C$L58||            ; |311| 
        ; BRANCH OCCURS {||$C$L58||}     ; |311| 
$C$DW$L$uDMA_Error$2$E:
;* --------------------------------------------------------------------------*

$C$DW$177	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$177, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\startup_ccsExperimental.asm:$C$L58:1:1341868682")
	.dwattr $C$DW$177, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$177, DW_AT_TI_begin_line(0x137)
	.dwattr $C$DW$177, DW_AT_TI_end_line(0x137)
$C$DW$178	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$178, DW_AT_low_pc($C$DW$L$uDMA_Error$2$B)
	.dwattr $C$DW$178, DW_AT_high_pc($C$DW$L$uDMA_Error$2$E)
	.dwendtag $C$DW$177

	.dwattr $C$DW$176, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$176, DW_AT_TI_end_line(0x137)
	.dwattr $C$DW$176, DW_AT_TI_end_column(0x25)
	.dwendentry
	.dwendtag $C$DW$176

	.sect	".text"
	.clink
	.thumbfunc DisableInterrupts
	.thumb
	.global	DisableInterrupts

$C$DW$179	.dwtag  DW_TAG_subprogram, DW_AT_name("DisableInterrupts")
	.dwattr $C$DW$179, DW_AT_low_pc(DisableInterrupts)
	.dwattr $C$DW$179, DW_AT_high_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("DisableInterrupts")
	.dwattr $C$DW$179, DW_AT_external
	.dwattr $C$DW$179, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$179, DW_AT_TI_begin_line(0x14a)
	.dwattr $C$DW$179, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$179, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$179, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$179, DW_AT_decl_column(0x06)
	.dwattr $C$DW$179, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 330,column 29,is_stmt,address DisableInterrupts

	.dwfde $C$DW$CIE, DisableInterrupts

;*****************************************************************************
;* FUNCTION NAME: DisableInterrupts                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
DisableInterrupts:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 331,column 2,is_stmt
    CPSID  I
    BX     LR
	.dwpsn	file "../startup_ccsExperimental.c",line 333,column 1,is_stmt
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return
        BX        LR
        ; BRANCH OCCURS {LR}            
	.dwattr $C$DW$179, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$179, DW_AT_TI_end_line(0x14d)
	.dwattr $C$DW$179, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$179

	.sect	".text"
	.clink
	.thumbfunc EnableInterrupts
	.thumb
	.global	EnableInterrupts

$C$DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$181, DW_AT_low_pc(EnableInterrupts)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("EnableInterrupts")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x153)
	.dwattr $C$DW$181, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$181, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$181, DW_AT_decl_line(0x153)
	.dwattr $C$DW$181, DW_AT_decl_column(0x06)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 339,column 28,is_stmt,address EnableInterrupts

	.dwfde $C$DW$CIE, EnableInterrupts

;*****************************************************************************
;* FUNCTION NAME: EnableInterrupts                                           *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
EnableInterrupts:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 340,column 2,is_stmt
    CPSIE  I
    BX     LR
	.dwpsn	file "../startup_ccsExperimental.c",line 342,column 1,is_stmt
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_TI_return
        BX        LR
        ; BRANCH OCCURS {LR}            
	.dwattr $C$DW$181, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text"
	.clink
	.thumbfunc StartCritical
	.thumb
	.global	StartCritical

$C$DW$183	.dwtag  DW_TAG_subprogram, DW_AT_name("StartCritical")
	.dwattr $C$DW$183, DW_AT_low_pc(StartCritical)
	.dwattr $C$DW$183, DW_AT_high_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("StartCritical")
	.dwattr $C$DW$183, DW_AT_external
	.dwattr $C$DW$183, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$183, DW_AT_TI_begin_line(0x15b)
	.dwattr $C$DW$183, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$183, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$183, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$183, DW_AT_decl_column(0x06)
	.dwattr $C$DW$183, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 347,column 25,is_stmt,address StartCritical

	.dwfde $C$DW$CIE, StartCritical

;*****************************************************************************
;* FUNCTION NAME: StartCritical                                              *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
StartCritical:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 348,column 2,is_stmt
    MRS    R0, PRIMASK  	; save old status 
    CPSID  I         	; mask all (except faults)
    BX     LR
	.dwpsn	file "../startup_ccsExperimental.c",line 351,column 1,is_stmt
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_TI_return
        BX        LR
        ; BRANCH OCCURS {LR}            
	.dwattr $C$DW$183, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$183, DW_AT_TI_end_line(0x15f)
	.dwattr $C$DW$183, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$183

	.sect	".text"
	.clink
	.thumbfunc EndCritical
	.thumb
	.global	EndCritical

$C$DW$185	.dwtag  DW_TAG_subprogram, DW_AT_name("EndCritical")
	.dwattr $C$DW$185, DW_AT_low_pc(EndCritical)
	.dwattr $C$DW$185, DW_AT_high_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("EndCritical")
	.dwattr $C$DW$185, DW_AT_external
	.dwattr $C$DW$185, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$185, DW_AT_TI_begin_line(0x165)
	.dwattr $C$DW$185, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$185, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$185, DW_AT_decl_line(0x165)
	.dwattr $C$DW$185, DW_AT_decl_column(0x06)
	.dwattr $C$DW$185, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 357,column 23,is_stmt,address EndCritical

	.dwfde $C$DW$CIE, EndCritical

;*****************************************************************************
;* FUNCTION NAME: EndCritical                                                *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
EndCritical:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 358,column 2,is_stmt
    MSR    PRIMASK, R0
    BX     LR
	.dwpsn	file "../startup_ccsExperimental.c",line 360,column 1,is_stmt
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return
        BX        LR
        ; BRANCH OCCURS {LR}            
	.dwattr $C$DW$185, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$185, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$185, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$185

	.sect	".text"
	.clink
	.thumbfunc WaitForInterrupt
	.thumb
	.global	WaitForInterrupt

$C$DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("WaitForInterrupt")
	.dwattr $C$DW$187, DW_AT_low_pc(WaitForInterrupt)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("WaitForInterrupt")
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_TI_begin_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$187, DW_AT_TI_begin_line(0x16e)
	.dwattr $C$DW$187, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$187, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$187, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$187, DW_AT_decl_column(0x06)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccsExperimental.c",line 366,column 28,is_stmt,address WaitForInterrupt

	.dwfde $C$DW$CIE, WaitForInterrupt

;*****************************************************************************
;* FUNCTION NAME: WaitForInterrupt                                           *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
WaitForInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
	.dwpsn	file "../startup_ccsExperimental.c",line 367,column 2,is_stmt
    WFI
    BX     LR
	.dwpsn	file "../startup_ccsExperimental.c",line 369,column 1,is_stmt
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_return
        BX        LR
        ; BRANCH OCCURS {LR}            
	.dwattr $C$DW$187, DW_AT_TI_end_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x171)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__STACK_TOP

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(5)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(2)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_decl_file("../startup_ccsExperimental.c")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x171)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)

$C$DW$T$20	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)
$C$DW$T$22	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)

$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0xf0)
$C$DW$189	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$189, DW_AT_upper_bound(0x3b)
	.dwendtag $C$DW$T$23

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 84
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	undefined, 26
	.dwcfi	undefined, 27
	.dwcfi	undefined, 28
	.dwcfi	undefined, 29
	.dwcfi	undefined, 30
	.dwcfi	undefined, 31
	.dwcfi	undefined, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg0]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg1]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg2]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg3]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V1")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg4]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V2")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg5]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V3")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg6]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V4")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg7]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V5")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg8]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V6")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg9]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V7")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg10]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V8")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg11]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V9")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg12]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg13]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("LR")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg14]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg15]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AP")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg16]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SR")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg17]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FPSCR")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg18]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FPEXC")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg19]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D0")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg20]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D0_hi")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg21]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D1")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg22]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D1_hi")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg23]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D2")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg24]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D2_hi")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg25]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D3")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg26]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D3_hi")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg27]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D4")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg28]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D4_hi")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg29]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D5")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg30]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D5_hi")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg31]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D6")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x20]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D6_hi")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x21]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D7")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x22]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D7_hi")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x23]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D8")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x24]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D8_hi")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x25]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D9")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x26]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D9_hi")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x27]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D10")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x28]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D10_hi")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x29]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D11")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D11_hi")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D12")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D12_hi")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D13")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D13_hi")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D14")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x30]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D14_hi")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x31]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D15")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x32]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D15_hi")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x33]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D16")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x34]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D16_hi")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x35]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D17")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x36]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D17_hi")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x37]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D18")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x38]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D18_hi")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x39]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D19")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D19_hi")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D20")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D20_hi")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D21")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D21_hi")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D22")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x40]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D22_hi")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x41]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D23")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x42]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D23_hi")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x43]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D24")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x44]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D24_hi")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x45]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D25")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x46]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D25_hi")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x47]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D26")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x48]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D26_hi")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x49]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D27")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D27_hi")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D28")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D28_hi")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D29")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D29_hi")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D30")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x50]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D30_hi")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x51]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D31")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x52]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D31_hi")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x53]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x54]
	.dwendtag $C$DW$CU

