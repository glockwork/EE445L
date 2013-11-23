;******************************************************************************
;* TMS470 C/C++ Codegen                                             PC v4.9.1 *
;* Date/Time created: Mon Jul 09 16:18:02 2012                                *
;******************************************************************************
	.compiler_opts --abi=eabi --code_state=16 --disable_dual_state --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=7M3 --symdebug:dwarf --symdebug:dwarf_version=2 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS470 C/C++ Codegen PC v4.9.1 Copyright (c) 1996-2011 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug")
;	C:\ti\ccsv5\tools\compiler\tms470\bin\acpia470.exe -@C:\\Users\\Valvano\\AppData\\Local\\Temp\\0435212 
	.sect	".text"
	.clink
	.thumbfunc main
	.thumb
	.global	main

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$1, DW_AT_low_pc(main)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x27)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$1, DW_AT_decl_file("D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x27)
	.dwattr $C$DW$1, DW_AT_decl_column(0x05)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 39,column 15,is_stmt,address main

	.dwfde $C$DW$CIE, main

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,SR                                         *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 84, 14
        SUB       SP, SP, #8
	.dwcfi	cfa_offset, 8
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("delay")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("delay")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 40,column 3,is_stmt
        LDR       A2, $C$CON1           ; |40| 
        LDR       A1, [A2, #0]          ; |40| 
        ORR       A1, A1, #8            ; |40| 
        STR       A1, [A2, #0]          ; |40| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 41,column 3,is_stmt
        LDR       A1, $C$CON1           ; |41| 
        LDR       A1, [A1, #0]          ; |41| 
        STR       A1, [SP, #0]          ; |41| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 42,column 3,is_stmt
        LDR       A2, $C$CON2           ; |42| 
        LDR       A1, [A2, #0]          ; |42| 
        ORR       A1, A1, #15           ; |42| 
        STR       A1, [A2, #0]          ; |42| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 43,column 3,is_stmt
        LDR       A2, $C$CON3           ; |43| 
        LDR       A1, [A2, #0]          ; |43| 
        BIC       A1, A1, #15           ; |43| 
        STR       A1, [A2, #0]          ; |43| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 44,column 3,is_stmt
        LDR       A2, $C$CON4           ; |44| 
        LDR       A1, [A2, #0]          ; |44| 
        ORR       A1, A1, #15           ; |44| 
        STR       A1, [A2, #0]          ; |44| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 45,column 9,is_stmt
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 45
;*   Loop closing brace source line  : 50
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
$C$DW$L$main$2$B:
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 46,column 5,is_stmt
        LDR       A2, $C$CON5           ; |46| 
        MOVS      A1, #10               ; |46| 
        STR       A1, [A2, #0]          ; |46| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 47,column 5,is_stmt
        LDR       A2, $C$CON5           ; |47| 
        MOVS      A1, #9                ; |47| 
        STR       A1, [A2, #0]          ; |47| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 48,column 5,is_stmt
        LDR       A2, $C$CON5           ; |48| 
        MOVS      A1, #5                ; |48| 
        STR       A1, [A2, #0]          ; |48| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 49,column 5,is_stmt
        LDR       A2, $C$CON5           ; |49| 
        MOVS      A1, #6                ; |49| 
        STR       A1, [A2, #0]          ; |49| 
	.dwpsn	file "D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c",line 45,column 9,is_stmt
        B         ||$C$L1||             ; |45| 
        ; BRANCH OCCURS {||$C$L1||}      ; |45| 
$C$DW$L$main$2$E:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0

$C$DW$3	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$3, DW_AT_name("D:\Dropbox\ArmBook\Individual Examples\GPIO_811\ccs\Debug\GPIO.asm:$C$L1:1:1341868682")
	.dwattr $C$DW$3, DW_AT_TI_begin_file("D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x32)
$C$DW$4	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$4, DW_AT_low_pc($C$DW$L$main$2$B)
	.dwattr $C$DW$4, DW_AT_high_pc($C$DW$L$main$2$E)
	.dwendtag $C$DW$3

	.dwattr $C$DW$1, DW_AT_TI_end_file("D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x33)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.field	1074782472,32
	.align	4
||$C$CON2||:	.field	1073771520,32
	.align	4
||$C$CON3||:	.field	1073771552,32
	.align	4
||$C$CON4||:	.field	1073771804,32
	.align	4
||$C$CON5||:	.field	1073770556,32

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
	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/Dropbox/ArmBook/Individual Examples/GPIO_811/GPIO.c")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
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
$C$DW$T$21	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
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

$C$DW$5	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg0]
$C$DW$6	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg1]
$C$DW$7	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg2]
$C$DW$8	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg3]
$C$DW$9	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V1")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg4]
$C$DW$10	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V2")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg5]
$C$DW$11	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V3")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg6]
$C$DW$12	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V4")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg7]
$C$DW$13	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V5")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg8]
$C$DW$14	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V6")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg9]
$C$DW$15	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V7")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg10]
$C$DW$16	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V8")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg11]
$C$DW$17	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("V9")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]
$C$DW$18	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg13]
$C$DW$19	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("LR")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg14]
$C$DW$20	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg15]
$C$DW$21	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AP")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg16]
$C$DW$22	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SR")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg17]
$C$DW$23	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FPSCR")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg18]
$C$DW$24	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FPEXC")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg19]
$C$DW$25	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D0")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg20]
$C$DW$26	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D0_hi")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg21]
$C$DW$27	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D1")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg22]
$C$DW$28	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D1_hi")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg23]
$C$DW$29	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D2")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg24]
$C$DW$30	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D2_hi")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg25]
$C$DW$31	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D3")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg26]
$C$DW$32	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D3_hi")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg27]
$C$DW$33	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D4")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg28]
$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D4_hi")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg29]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D5")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg30]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D5_hi")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg31]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D6")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_regx 0x20]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D6_hi")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_regx 0x21]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D7")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_regx 0x22]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D7_hi")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_regx 0x23]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D8")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_regx 0x24]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D8_hi")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_regx 0x25]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D9")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_regx 0x26]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D9_hi")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x27]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D10")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x28]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D10_hi")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x29]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D11")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D11_hi")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D12")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D12_hi")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D13")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D13_hi")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D14")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_regx 0x30]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D14_hi")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_regx 0x31]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D15")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x32]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D15_hi")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x33]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D16")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x34]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D16_hi")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x35]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D17")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x36]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D17_hi")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x37]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D18")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x38]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D18_hi")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x39]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D19")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D19_hi")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D20")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D20_hi")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D21")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D21_hi")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D22")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x40]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D22_hi")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x41]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D23")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x42]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D23_hi")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x43]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D24")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x44]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D24_hi")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x45]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D25")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x46]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D25_hi")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x47]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D26")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x48]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D26_hi")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x49]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D27")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D27_hi")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D28")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D28_hi")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D29")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D29_hi")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D30")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x50]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D30_hi")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x51]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D31")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x52]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("D31_hi")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x53]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x54]
	.dwendtag $C$DW$CU

