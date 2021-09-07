sdcc -c -mz80 bank.c
sdcc -c -mz80 --codeseg BANK1 banked_code_1.c
sdcc -c -mz80 --codeseg BANK2 banked_code_2.c
sdcc -c -mz80 --codeseg BANK3 banked_code_3.c
sdcc -c -mz80 --codeseg BANK4 banked_code_4.c
sdcc -c -mz80 --codeseg BANK5 banked_code_5.c
sdcc -c -mz80 --codeseg BANK6 banked_code_6.c
sdcc -c -mz80 --codeseg BANK7 banked_code_7.c
sdcc -c -mz80 --codeseg BANK8 banked_code_8.c
sdcc -c -mz80 --codeseg BANK9 banked_code_9.c
sdcc -c -mz80 --codeseg BANK10 banked_code_10.c
sdcc -c -mz80 --codeseg BANK11 banked_code_11.c
sdcc -c -mz80 --codeseg BANK12 banked_code_12.c
sdcc -c -mz80 --codeseg BANK13 banked_code_13.c
sdcc -c -mz80 --codeseg BANK14 banked_code_14.c
sdcc -c -mz80 --codeseg BANK15 banked_code_15.c
sdcc -c -mz80 --codeseg BANK16 banked_code_16.c
sdcc -c -mz80 --codeseg BANK17 banked_code_17.c
sdcc -c -mz80 --codeseg BANK18 banked_code_18.c
sdcc -c -mz80 --codeseg BANK19 banked_code_19.c
sdcc -c -mz80 --codeseg BANK20 banked_code_20.c
sdcc -c -mz80 --codeseg BANK21 banked_code_21.c
sdcc -c -mz80 --codeseg BANK22 banked_code_22.c
sdcc -c -mz80 --codeseg BANK23 banked_code_23.c
sdcc -c -mz80 --codeseg BANK24 banked_code_24.c
sdcc -c -mz80 --codeseg BANK25 banked_code_25.c
sdcc -c -mz80 --codeseg BANK26 banked_code_26.c
sdcc -c -mz80 --codeseg BANK27 banked_code_27.c
sdcc -c -mz80 --codeseg BANK28 banked_code_28.c
sdcc -c -mz80 --codeseg BANK29 banked_code_29.c
sdcc -c -mz80 --codeseg BANK30 banked_code_30.c
sdcc -c -mz80 --codeseg BANK31 banked_code_31.c

sdcc -o bank.ihx ^
	-mz80 ^
	--no-std-crt0 ^
	--data-loc 0xC000 ^
	-Wl-b_BANK1=0x14000 ^
	-Wl-b_BANK2=0x24000 ^
	-Wl-b_BANK3=0x34000 ^
	-Wl-b_BANK4=0x44000 ^
	-Wl-b_BANK5=0x54000 ^
	-Wl-b_BANK6=0x64000 ^
	-Wl-b_BANK7=0x74000 ^
	-Wl-b_BANK8=0x84000 ^
	-Wl-b_BANK9=0x94000 ^
	-Wl-b_BANK10=0xA4000 ^
	-Wl-b_BANK11=0xB4000 ^
	-Wl-b_BANK12=0xC4000 ^
	-Wl-b_BANK13=0xD4000 ^
	-Wl-b_BANK14=0xE4000 ^
	-Wl-b_BANK15=0xF4000 ^
	-Wl-b_BANK16=0x104000 ^
	-Wl-b_BANK17=0x114000 ^
	-Wl-b_BANK18=0x124000 ^
	-Wl-b_BANK19=0x134000 ^
	-Wl-b_BANK20=0x144000 ^
	-Wl-b_BANK21=0x154000 ^
	-Wl-b_BANK22=0x164000 ^
	-Wl-b_BANK23=0x174000 ^
	-Wl-b_BANK24=0x184000 ^
	-Wl-b_BANK25=0x194000 ^
	-Wl-b_BANK26=0x1A4000 ^
	-Wl-b_BANK27=0x1B4000 ^
	-Wl-b_BANK28=0x1C4000 ^
	-Wl-b_BANK29=0x1D4000 ^
	-Wl-b_BANK30=0x1E4000 ^
	-Wl-b_BANK31=0x1F4000 ^
	crt0_sg.rel ^
	bank.rel ^
	SGlib.rel ^
	PSGlib.rel ^
	banked_code_1.rel ^
	banked_code_2.rel ^
	banked_code_3.rel ^
	banked_code_4.rel ^
	banked_code_5.rel ^
	banked_code_6.rel ^
	banked_code_7.rel ^
	banked_code_8.rel ^
	banked_code_9.rel ^
	banked_code_10.rel ^
	banked_code_11.rel ^
	banked_code_12.rel ^
	banked_code_13.rel ^
	banked_code_14.rel ^
	banked_code_15.rel ^
	banked_code_16.rel ^
	banked_code_17.rel ^
	banked_code_18.rel ^
	banked_code_19.rel ^
	banked_code_20.rel ^
	banked_code_21.rel ^
	banked_code_22.rel ^
	banked_code_23.rel ^
	banked_code_24.rel ^
	banked_code_25.rel ^
	banked_code_26.rel ^
	banked_code_27.rel ^
	banked_code_28.rel ^
	banked_code_29.rel ^
	banked_code_30.rel ^
	banked_code_31.rel

makesms bank.ihx bank.sg

del *.asm > nul
del *.ihx > nul
del *.lk > nul
del *.lst > nul
del *.map > nul
del *.noi > nul
del *.sym > nul

pause