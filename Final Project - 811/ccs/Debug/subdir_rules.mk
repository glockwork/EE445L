################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Switch.obj: D:/Dropbox/ArmBook/Individual\ Examples/Switch_811/Switch.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv5/tools/compiler/tms470/bin/cl470" -mv7M3 --code_state=16 --abi=eabi -me -g --include_path="C:/ti/ccsv5/tools/compiler/tms470/include" --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../.." --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../../" --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../../driverlib" --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../../utils" --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../../inc" --include_path="C:/StellarisWare" --include_path="C:/StellarisWare/utils" --include_path="C:/StellarisWare/driverlib" --include_path="C:/StellarisWare/inc" --gcc --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="Switch.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup_ccsExperimental.obj: ../startup_ccsExperimental.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv5/tools/compiler/tms470/bin/cl470" -mv7M3 --code_state=16 --abi=eabi -me -g --include_path="C:/ti/ccsv5/tools/compiler/tms470/include" --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../.." --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../../" --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../../driverlib" --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../../utils" --include_path="D:/Dropbox/ArmBook/Individual Examples/Switch_811/ccs/../../inc" --include_path="C:/StellarisWare" --include_path="C:/StellarisWare/utils" --include_path="C:/StellarisWare/driverlib" --include_path="C:/StellarisWare/inc" --gcc --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="startup_ccsExperimental.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


