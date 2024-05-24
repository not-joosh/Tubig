opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_checkWaterLevel
	FNCALL	_main,_initLCD
	FNCALL	_main,_initSYS
	FNCALL	_main,_instCtrl
	FNCALL	_main,_printString
	FNCALL	_main,_updateDisplay
	FNCALL	_updateDisplay,_disableWater
	FNCALL	_updateDisplay,_enableWater
	FNCALL	_updateDisplay,_instCtrl
	FNCALL	_updateDisplay,_printString
	FNCALL	_updateDisplay,_sprintf
	FNCALL	_updateDisplay,_timerDelay
	FNCALL	_enableWater,_rotateLeft
	FNCALL	_initSYS,_disableWater
	FNCALL	_initSYS,_instCtrl
	FNCALL	_initSYS,_printString
	FNCALL	_disableWater,_rotateRight
	FNCALL	_initLCD,_instCtrl
	FNCALL	_checkWaterLevel,___awmod
	FNCALL	_checkWaterLevel,___ftadd
	FNCALL	_checkWaterLevel,___ftdiv
	FNCALL	_checkWaterLevel,___ftge
	FNCALL	_checkWaterLevel,___ftmul
	FNCALL	_checkWaterLevel,___ftneg
	FNCALL	_checkWaterLevel,___fttol
	FNCALL	_checkWaterLevel,___lwtoft
	FNCALL	_checkWaterLevel,_instCtrl
	FNCALL	_checkWaterLevel,_printString
	FNCALL	_checkWaterLevel,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_printString,_dataCtrl
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_empty
	global	_seconds
	global	_avg
	global	_index
	global	_servo_one_status
	global	_servo_two_status
	global	_collection
	global	_countflag
	global	_schedulerFlag
	global	_valve1
	global	_valve2
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_T1CON
_T1CON	set	0x10
	global	_TMR1H
_TMR1H	set	0xF
	global	_TMR1L
_TMR1L	set	0xE
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RC0
_RC0	set	0x38
	global	_RC2
_RC2	set	0x3A
	global	_RC3
_RC3	set	0x3B
	global	_RC4
_RC4	set	0x3C
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_TMR1IF
_TMR1IF	set	0x60
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISA
_TRISA	set	0x85
	global	_TRISD
_TRISD	set	0x88
	global	_TMR1IE
_TMR1IE	set	0x460
	global	_TRISB1
_TRISB1	set	0x431
	global	_TRISB2
_TRISB2	set	0x432
	global	_TRISC0
_TRISC0	set	0x438
	global	_TRISC1
_TRISC1	set	0x439
	global	_TRISC2
_TRISC2	set	0x43A
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
	global __stringdata
__stringdata:
	
STR_3:	
	retlw	86	;'V'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	91	;'['
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	93	;']'
	retlw	0
psect	strings
	
STR_4:	
	retlw	86	;'V'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	91	;'['
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	93	;']'
	retlw	0
psect	strings
	
STR_11:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_14:	
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	84	;'T'
	retlw	89	;'Y'
	retlw	0
psect	strings
	
STR_7:	
	retlw	32	;' '
	retlw	91	;'['
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	93	;']'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	87	;'W'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	91	;'['
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	93	;']'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_18:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	37	;'%'
	retlw	37	;'%'
	retlw	0
psect	strings
STR_8	equ	STR_3+8
STR_10	equ	STR_3+8
STR_15	equ	STR_3+8
STR_16	equ	STR_3+8
STR_9	equ	STR_7+0
STR_12	equ	STR_7+0
STR_13	equ	STR_7+0
STR_19	equ	STR_11+5
STR_20	equ	STR_11+5
STR_1	equ	STR_11+8
STR_17	equ	STR_11+14
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"Alin_Ceballos_Francis_Gere_Ratificar_DP.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_empty:
       ds      2

_seconds:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_avg:
       ds      3

_index:
       ds      2

_servo_one_status:
       ds      2

_servo_two_status:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_collection:
       ds      20

_countflag:
       ds      2

_schedulerFlag:
       ds      2

_valve1:
       ds      2

_valve2:
       ds      2

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+09h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+01Ch)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	checkWaterLevel@percentage
checkWaterLevel@percentage:	; 10 bytes @ 0x0
	ds	10
	global	checkWaterLevel@duration
checkWaterLevel@duration:	; 2 bytes @ 0xA
	ds	2
	global	checkWaterLevel@distance
checkWaterLevel@distance:	; 2 bytes @ 0xC
	ds	2
	global	checkWaterLevel@percentValue
checkWaterLevel@percentValue:	; 2 bytes @ 0xE
	ds	2
	global	checkWaterLevel@i
checkWaterLevel@i:	; 2 bytes @ 0x10
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initLCD:	; 0 bytes @ 0x0
?_initSYS:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_checkWaterLevel:	; 0 bytes @ 0x0
?_updateDisplay:	; 0 bytes @ 0x0
?_timerDelay:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
	ds	4
??_initLCD:	; 0 bytes @ 0x4
??_instCtrl:	; 0 bytes @ 0x4
?_printString:	; 0 bytes @ 0x4
??_timerDelay:	; 0 bytes @ 0x4
?_rotateLeft:	; 0 bytes @ 0x4
?_rotateRight:	; 0 bytes @ 0x4
??_dataCtrl:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
??___lwtoft:	; 0 bytes @ 0x4
	global	timerDelay@localClock
timerDelay@localClock:	; 2 bytes @ 0x4
	global	rotateLeft@servoPin
rotateLeft@servoPin:	; 2 bytes @ 0x4
	global	rotateRight@servoPin
rotateRight@servoPin:	; 2 bytes @ 0x4
	global	printString@string
printString@string:	; 2 bytes @ 0x4
	ds	1
??___ftneg:	; 0 bytes @ 0x5
??___lwmod:	; 0 bytes @ 0x5
	ds	1
??_initSYS:	; 0 bytes @ 0x6
??_printString:	; 0 bytes @ 0x6
??_disableWater:	; 0 bytes @ 0x6
??_enableWater:	; 0 bytes @ 0x6
??_main:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_rotateLeft:	; 0 bytes @ 0x0
??_rotateRight:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	dataCtrl@data
dataCtrl@data:	; 1 bytes @ 0x0
	global	instCtrl@inst
instCtrl@inst:	; 1 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	1
	global	dataCtrl@i
dataCtrl@i:	; 2 bytes @ 0x1
	global	instCtrl@i
instCtrl@i:	; 2 bytes @ 0x1
	ds	1
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
?_disableWater:	; 0 bytes @ 0x3
?_enableWater:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	enableWater@servoPin
enableWater@servoPin:	; 2 bytes @ 0x3
	global	disableWater@servoPin
disableWater@servoPin:	; 2 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xB
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xC
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xC
	ds	2
??___ftdiv:	; 0 bytes @ 0xE
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xE
	ds	1
??_sprintf:	; 0 bytes @ 0xF
	ds	2
??___ftmul:	; 0 bytes @ 0x11
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x12
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x12
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x13
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x13
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x14
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x15
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x15
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x16
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x16
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x17
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x19
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x19
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1A
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1A
	ds	1
??_updateDisplay:	; 0 bytes @ 0x1B
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x1B
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x1B
	ds	1
	global	updateDisplay@seconds_str
updateDisplay@seconds_str:	; 10 bytes @ 0x1C
	ds	2
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1E
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1E
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x21
	ds	3
??___ftadd:	; 0 bytes @ 0x24
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x28
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x29
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2A
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2B
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2B
	ds	4
??___fttol:	; 0 bytes @ 0x2F
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x33
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x34
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x38
	ds	1
??_checkWaterLevel:	; 0 bytes @ 0x39
	ds	1
;!
;!Data Sizes:
;!    Strings     122
;!    Constant    10
;!    Data        0
;!    BSS         41
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     58      67
;!    BANK1            80     18      46
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_18(CODE[5]), STR_6(CODE[6]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> checkWaterLevel@percentage(BANK1[10]), updateDisplay@seconds_str(BANK0[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S191$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    printString@string	PTR unsigned char  size(2) Largest target is 21
;!		 -> STR_20(CODE[14]), STR_19(CODE[14]), checkWaterLevel@percentage(BANK1[10]), STR_17(CODE[5]), 
;!		 -> STR_16(CODE[13]), STR_15(CODE[13]), STR_14(CODE[14]), STR_13(CODE[13]), 
;!		 -> STR_12(CODE[13]), STR_11(CODE[19]), STR_10(CODE[13]), STR_9(CODE[13]), 
;!		 -> STR_8(CODE[13]), STR_7(CODE[13]), updateDisplay@seconds_str(BANK0[10]), STR_5(CODE[8]), 
;!		 -> STR_4(CODE[21]), STR_3(CODE[21]), STR_2(CODE[15]), STR_1(CODE[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_printString
;!    _updateDisplay->_printString
;!    _updateDisplay->_timerDelay
;!    _enableWater->_rotateLeft
;!    _initSYS->_printString
;!    _disableWater->_rotateRight
;!    _checkWaterLevel->_printString
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    ___fttol->___lwtoft
;!    ___ftmul->___lwtoft
;!    ___ftadd->___lwtoft
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkWaterLevel
;!    _updateDisplay->_sprintf
;!    _enableWater->_rotateLeft
;!    _initSYS->_disableWater
;!    _disableWater->_rotateRight
;!    _initLCD->_instCtrl
;!    _checkWaterLevel->___fttol
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _printString->_dataCtrl
;!    ___lwtoft->___ftpack
;!    ___fttol->___ftadd
;!    ___ftneg->___ftmul
;!    ___ftmul->___lwtoft
;!    ___ftdiv->___ftpack
;!    ___ftadd->___ftneg
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_checkWaterLevel
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0   24652
;!                    _checkWaterLevel
;!                            _initLCD
;!                            _initSYS
;!                           _instCtrl
;!                        _printString
;!                      _updateDisplay
;! ---------------------------------------------------------------------------------
;! (1) _updateDisplay                                       11    11      0    4403
;!                                             27 BANK0     11    11      0
;!                       _disableWater
;!                        _enableWater
;!                           _instCtrl
;!                        _printString
;!                            _sprintf
;!                         _timerDelay
;! ---------------------------------------------------------------------------------
;! (2) _timerDelay                                           2     2      0      24
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _enableWater                                          2     0      2     452
;!                                              3 BANK0      2     0      2
;!                         _rotateLeft
;! ---------------------------------------------------------------------------------
;! (3) _rotateLeft                                           5     3      2     161
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _initSYS                                              0     0      0    2145
;!                       _disableWater
;!                           _instCtrl
;!                        _printString
;! ---------------------------------------------------------------------------------
;! (2) _disableWater                                         2     0      2     582
;!                                              3 BANK0      2     0      2
;!                        _rotateRight
;! ---------------------------------------------------------------------------------
;! (3) _rotateRight                                          5     3      2     161
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0      99
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _checkWaterLevel                                     19    19      0   16442
;!                                             57 BANK0      1     1      0
;!                                              0 BANK1     18    18      0
;!                            ___awmod
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lwtoft
;!                           _instCtrl
;!                        _printString
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             15    12      3    1684
;!                                             12 BANK0     15    12      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     362
;!                                              5 COMMON     1     1      0
;!                                              7 BANK0      5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     371
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _printString                                          2     0      2    1464
;!                                              4 COMMON     2     0      2
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (3) _dataCtrl                                             3     3      0      99
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             3     3      0      99
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             4     1      3    2198
;!                                              4 COMMON     1     1      0
;!                                              8 BANK0      3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     501
;!                                             43 BANK0     14    10      4
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     130
;!                                             27 BANK0      3     0      3
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             16    10      6    2785
;!                                             11 BANK0     16    10      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6     458
;!                                              0 BANK0     12     6      6
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             16    10      6    2587
;!                                              8 BANK0     16    10      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftadd                                             13     7      6    3612
;!                                             30 BANK0     13     7      6
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2037
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     563
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _checkWaterLevel
;!     ___awmod
;!     ___ftadd
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftdiv
;!       ___ftpack
;!     ___ftge
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftneg
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     ___fttol
;!       ___ftadd (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftneg (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!     _instCtrl
;!     _printString
;!       _dataCtrl
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!   _initLCD
;!     _instCtrl
;!   _initSYS
;!     _disableWater
;!       _rotateRight
;!     _instCtrl
;!     _printString
;!       _dataCtrl
;!   _instCtrl
;!   _printString
;!     _dataCtrl
;!   _updateDisplay
;!     _disableWater
;!       _rotateRight
;!     _enableWater
;!       _rotateLeft
;!     _instCtrl
;!     _printString
;!       _dataCtrl
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!     _timerDelay
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      7B       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     3A      43       5       83.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50     12      2E       7       57.5%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      7B      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 121 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_checkWaterLevel
;;		_initLCD
;;		_initSYS
;;		_instCtrl
;;		_printString
;;		_updateDisplay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	121
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	121
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	124
	
l3204:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 124: TRISB1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7	;volatile
	line	125
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 125: TRISB2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	126
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 126: TRISC0 = TRISC1 = TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7	;volatile
	bcf	(1081/8)^080h,(1081)&7	;volatile
	bcf	(1080/8)^080h,(1080)&7	;volatile
	line	127
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 127: TRISC3 = TRISC4 = 0;
	bcf	(1084/8)^080h,(1084)&7	;volatile
	bcf	(1083/8)^080h,(1083)&7	;volatile
	line	128
	
l3206:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 128: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	129
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 129: PORTD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	130
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 130: PORTC = 0x00;
	clrf	(7)	;volatile
	line	132
	
l3208:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 132: initLCD();
	fcall	_initLCD
	line	133
	
l3210:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 133: initSYS();
	fcall	_initSYS
	line	136
	
l3212:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 136: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	138
	
l3214:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 138: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	139
	
l3216:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 139: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	140
	
l3218:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 140: T1CON = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(16)	;volatile
	line	141
	
l3220:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 141: TMR1IF = 0;
	bcf	(96/8),(96)&7	;volatile
	line	142
	
l3222:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 142: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	143
	
l3224:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 143: TMR1ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7	;volatile
	line	145
	
l3226:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 145: OPTION_REG = 0x44;
	movlw	(044h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	147
	
l3228:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 147: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	148
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 148: printString("          ");
	movlw	low((STR_1)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	149
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 149: while(1)
	
l111:	
	line	151
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 150: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 151: checkWaterLevel();
	fcall	_checkWaterLevel
	line	152
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 152: updateDisplay();
	fcall	_updateDisplay
	goto	l111
	line	154
	
l112:	
	line	149
	goto	l111
	
l113:	
	line	155
	
l114:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updateDisplay

;; *************** function _updateDisplay *****************
;; Defined at:
;;		line 171 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  seconds_str    10   28[BANK0 ] unsigned char [10]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_disableWater
;;		_enableWater
;;		_instCtrl
;;		_printString
;;		_sprintf
;;		_timerDelay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	171
global __ptext1
__ptext1:	;psect for function _updateDisplay
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	171
	global	__size_of_updateDisplay
	__size_of_updateDisplay	equ	__end_of_updateDisplay-_updateDisplay
	
_updateDisplay:	
;incstack = 0
	opt	stack 4
; Regs used in _updateDisplay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	173
	
l3100:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 173: if(!empty)
	movf	((_empty+1)),w
	iorwf	((_empty)),w
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l3182
u3790:
	line	175
	
l3102:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 174: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 175: if(schedulerFlag)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_schedulerFlag+1)^080h,w
	iorwf	(_schedulerFlag)^080h,w
	skipnz
	goto	u3801
	goto	u3800
u3801:
	goto	l3160
u3800:
	line	178
	
l3104:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 176: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 178: if(seconds-- > 0)
	movlw	low(-1)
	addwf	(_seconds),f
	skipnc
	incf	(_seconds+1),f
	movlw	high(-1)
	addwf	(_seconds+1),f
	btfsc	((_seconds+1)),7
	goto	u3811
	goto	u3810
u3811:
	goto	l3114
u3810:
	line	181
	
l3106:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 179: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 181: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	183
	
l3108:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 182: char seconds_str[10];
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 183: sprintf(seconds_str, "[%d]s", seconds);
	movlw	((STR_6)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateDisplay+0)+0
	movf	(??_updateDisplay+0)+0,w
	movwf	(sprintf@f)
	movf	(_seconds+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_seconds),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(updateDisplay@seconds_str)&0ffh
	fcall	_sprintf
	line	184
	
l3110:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 184: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	185
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 185: printString(seconds_str);
	movlw	(updateDisplay@seconds_str&0ffh)
	movwf	(printString@string)
	movlw	(0x0)
	movwf	(printString@string+1)
	fcall	_printString
	line	186
	
l3112:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 186: timerDelay();
	fcall	_timerDelay
	line	187
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 187: }
	goto	l136
	line	188
	
l122:	
	line	191
	
l3114:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 188: else
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 189: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 191: if(valve1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_valve1+1)^080h,w
	iorwf	(_valve1)^080h,w
	skipnz
	goto	u3821
	goto	u3820
u3821:
	goto	l3138
u3820:
	line	193
	
l3116:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 192: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 193: valve1 = 0;
	clrf	(_valve1)^080h
	clrf	(_valve1+1)^080h
	line	194
	
l3118:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 194: valve2 = 1;
	movlw	low(01h)
	movwf	(_valve2)^080h
	movlw	high(01h)
	movwf	((_valve2)^080h)+1
	line	195
	
l3120:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 195: seconds = 10;
	movlw	low(0Ah)
	movwf	(_seconds)
	movlw	high(0Ah)
	movwf	((_seconds))+1
	line	197
	
l3122:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 197: if(!servo_two_status)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_servo_two_status+1)),w
	iorwf	((_servo_two_status)),w
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l3130
u3830:
	line	200
	
l3124:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 198: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 200: instCtrl(0x9C);
	movlw	(09Ch)
	fcall	_instCtrl
	line	201
	
l3126:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 201: printString(" [ON]   OFF ");
	movlw	low((STR_7)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	202
	
l3128:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 202: enableWater(2);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(enableWater@servoPin)
	movlw	high(02h)
	movwf	((enableWater@servoPin))+1
	fcall	_enableWater
	goto	l3130
	line	203
	
l125:	
	line	204
	
l3130:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 203: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 204: if(servo_one_status)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_servo_one_status+1),w
	iorwf	(_servo_one_status),w
	skipnz
	goto	u3841
	goto	u3840
u3841:
	goto	l136
u3840:
	line	207
	
l3132:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 205: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 207: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	208
	
l3134:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 208: printString("  ON   [OFF]");
	movlw	low((STR_8)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	209
	
l3136:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 209: disableWater(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(disableWater@servoPin)
	movlw	high(01h)
	movwf	((disableWater@servoPin))+1
	fcall	_disableWater
	goto	l136
	line	210
	
l126:	
	line	211
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 210: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 211: }
	goto	l136
	line	212
	
l124:	
	line	214
	
l3138:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 212: else
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 213: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 214: valve1 = 1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_valve1)^080h
	movlw	high(01h)
	movwf	((_valve1)^080h)+1
	line	215
	
l3140:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 215: valve2 = 0;
	clrf	(_valve2)^080h
	clrf	(_valve2+1)^080h
	line	216
	
l3142:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 216: seconds = 10;
	movlw	low(0Ah)
	movwf	(_seconds)
	movlw	high(0Ah)
	movwf	((_seconds))+1
	line	218
	
l3144:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 218: if(!servo_one_status)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_servo_one_status+1)),w
	iorwf	((_servo_one_status)),w
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l3152
u3850:
	line	221
	
l3146:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 219: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 221: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	222
	
l3148:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 222: printString(" [ON]   OFF ");
	movlw	low((STR_9)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	223
	
l3150:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 223: enableWater(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(enableWater@servoPin)
	movlw	high(01h)
	movwf	((enableWater@servoPin))+1
	fcall	_enableWater
	goto	l3152
	line	224
	
l128:	
	line	225
	
l3152:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 224: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 225: if(servo_two_status)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_servo_two_status+1),w
	iorwf	(_servo_two_status),w
	skipnz
	goto	u3861
	goto	u3860
u3861:
	goto	l136
u3860:
	line	228
	
l3154:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 226: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 228: instCtrl(0x9C);
	movlw	(09Ch)
	fcall	_instCtrl
	line	229
	
l3156:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 229: printString("  ON   [OFF]");
	movlw	low((STR_10)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	230
	
l3158:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 230: disableWater(2);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(disableWater@servoPin)
	movlw	high(02h)
	movwf	((disableWater@servoPin))+1
	fcall	_disableWater
	goto	l136
	line	231
	
l129:	
	goto	l136
	line	232
	
l127:	
	goto	l136
	line	233
	
l123:	
	line	234
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 231: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 232: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 233: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 234: }
	goto	l136
	line	235
	
l121:	
	line	240
	
l3160:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 235: else
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 236: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 240: valve1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_valve1)^080h
	clrf	(_valve1+1)^080h
	line	241
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 241: valve2 = 0;
	clrf	(_valve2)^080h
	clrf	(_valve2+1)^080h
	line	242
	
l3162:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 242: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	244
	
l3164:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 244: printString("                  ");
	movlw	low((STR_11)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	245
	
l3166:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 245: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	246
	
l3168:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 246: printString(" [ON]   OFF ");
	movlw	low((STR_12)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	247
	
l3170:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 247: instCtrl(0x9C);
	movlw	(09Ch)
	fcall	_instCtrl
	line	248
	
l3172:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 248: printString(" [ON]   OFF ");
	movlw	low((STR_13)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	249
	
l3174:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 249: if(!servo_one_status)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_servo_one_status+1)),w
	iorwf	((_servo_one_status)),w
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l3178
u3870:
	line	250
	
l3176:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 250: enableWater(1);
	movlw	low(01h)
	movwf	(enableWater@servoPin)
	movlw	high(01h)
	movwf	((enableWater@servoPin))+1
	fcall	_enableWater
	goto	l3178
	
l131:	
	line	251
	
l3178:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 251: if(!servo_two_status)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_servo_two_status+1)),w
	iorwf	((_servo_two_status)),w
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l136
u3880:
	line	252
	
l3180:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 252: enableWater(2);
	movlw	low(02h)
	movwf	(enableWater@servoPin)
	movlw	high(02h)
	movwf	((enableWater@servoPin))+1
	fcall	_enableWater
	goto	l136
	
l132:	
	goto	l136
	line	253
	
l130:	
	line	254
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 253: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 254: }
	goto	l136
	line	255
	
l120:	
	line	257
	
l3182:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 255: else
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 256: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 257: valve1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_valve1)^080h
	clrf	(_valve1+1)^080h
	line	258
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 258: valve2 = 0;
	clrf	(_valve2)^080h
	clrf	(_valve2+1)^080h
	line	259
	
l3184:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 259: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	260
	
l3186:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 260: printString("TANK IS EMPTY");
	movlw	low((STR_14)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	261
	
l3188:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 261: if(servo_one_status)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_servo_one_status+1),w
	iorwf	(_servo_one_status),w
	skipnz
	goto	u3891
	goto	u3890
u3891:
	goto	l3196
u3890:
	line	263
	
l3190:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 262: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 263: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	264
	
l3192:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 264: printString("  ON   [OFF]");
	movlw	low((STR_15)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	265
	
l3194:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 265: disableWater(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(disableWater@servoPin)
	movlw	high(01h)
	movwf	((disableWater@servoPin))+1
	fcall	_disableWater
	goto	l3196
	line	266
	
l134:	
	line	267
	
l3196:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 266: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 267: if(servo_two_status)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_servo_two_status+1),w
	iorwf	(_servo_two_status),w
	skipnz
	goto	u3901
	goto	u3900
u3901:
	goto	l136
u3900:
	line	269
	
l3198:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 268: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 269: instCtrl(0x9C);
	movlw	(09Ch)
	fcall	_instCtrl
	line	270
	
l3200:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 270: printString("  ON   [OFF]");
	movlw	low((STR_16)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	271
	
l3202:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 271: disableWater(2);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(disableWater@servoPin)
	movlw	high(02h)
	movwf	((disableWater@servoPin))+1
	fcall	_disableWater
	goto	l136
	line	272
	
l135:	
	goto	l136
	line	273
	
l133:	
	line	274
	
l136:	
	return
	opt stack 0
GLOBAL	__end_of_updateDisplay
	__end_of_updateDisplay:
	signat	_updateDisplay,88
	global	_timerDelay

;; *************** function _timerDelay *****************
;; Defined at:
;;		line 281 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  localClock      2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	281
global __ptext2
__ptext2:	;psect for function _timerDelay
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	281
	global	__size_of_timerDelay
	__size_of_timerDelay	equ	__end_of_timerDelay-_timerDelay
	
_timerDelay:	
;incstack = 0
	opt	stack 5
; Regs used in _timerDelay: [wreg+status,2+btemp+1]
	line	299
	
l1838:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 299: int localClock = 0;
	clrf	(timerDelay@localClock)
	clrf	(timerDelay@localClock+1)
	line	300
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 300: while(localClock < 73)
	goto	l1846
	
l140:	
	line	302
	
l1840:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 301: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 302: if(countflag == 1)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_countflag)^080h,w
	iorwf	(_countflag+1)^080h,w
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l1846
u1690:
	line	304
	
l1842:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 303: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 304: countflag = 0;
	clrf	(_countflag)^080h
	clrf	(_countflag+1)^080h
	line	305
	
l1844:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 305: localClock++;
	movlw	low(01h)
	addwf	(timerDelay@localClock),f
	skipnc
	incf	(timerDelay@localClock+1),f
	movlw	high(01h)
	addwf	(timerDelay@localClock+1),f
	goto	l1846
	line	306
	
l141:	
	goto	l1846
	line	307
	
l139:	
	line	300
	
l1846:	
	movf	(timerDelay@localClock+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(049h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1705
	movlw	low(049h)
	subwf	(timerDelay@localClock),w
u1705:

	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l1840
u1700:
	goto	l143
	
l142:	
	line	308
	
l143:	
	return
	opt stack 0
GLOBAL	__end_of_timerDelay
	__end_of_timerDelay:
	signat	_timerDelay,88
	global	_enableWater

;; *************** function _enableWater *****************
;; Defined at:
;;		line 391 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;  servoPin        2    3[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_rotateLeft
;; This function is called by:
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	391
global __ptext3
__ptext3:	;psect for function _enableWater
psect	text3
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	391
	global	__size_of_enableWater
	__size_of_enableWater	equ	__end_of_enableWater-_enableWater
	
_enableWater:	
;incstack = 0
	opt	stack 4
; Regs used in _enableWater: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	400
	
l2702:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 400: switch(servoPin)
	goto	l2714
	line	402
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 401: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 402: case 1:
	
l170:	
	line	403
	
l2704:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 403: rotateLeft(1);
	movlw	low(01h)
	movwf	(rotateLeft@servoPin)
	movlw	high(01h)
	movwf	((rotateLeft@servoPin))+1
	fcall	_rotateLeft
	line	404
	
l2706:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 404: servo_one_status = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_servo_one_status)
	movlw	high(01h)
	movwf	((_servo_one_status))+1
	line	405
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 405: break;
	goto	l174
	line	406
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 406: case 2:
	
l172:	
	line	407
	
l2708:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 407: rotateLeft(2);
	movlw	low(02h)
	movwf	(rotateLeft@servoPin)
	movlw	high(02h)
	movwf	((rotateLeft@servoPin))+1
	fcall	_rotateLeft
	line	408
	
l2710:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 408: servo_two_status = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_servo_two_status)
	movlw	high(01h)
	movwf	((_servo_two_status))+1
	line	409
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 409: break;
	goto	l174
	line	410
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 410: default:
	
l173:	
	line	411
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 411: break;
	goto	l174
	line	412
	
l2712:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 412: }
	goto	l174
	line	400
	
l169:	
	
l2714:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (enableWater@servoPin+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3310
	goto	l174
	opt asmopt_on
	
l3310:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           17    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (enableWater@servoPin),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2704
	xorlw	2^1	; case 2
	skipnz
	goto	l2708
	goto	l174
	opt asmopt_on

	line	412
	
l171:	
	line	413
	
l174:	
	return
	opt stack 0
GLOBAL	__end_of_enableWater
	__end_of_enableWater:
	signat	_enableWater,4216
	global	_rotateLeft

;; *************** function _rotateLeft *****************
;; Defined at:
;;		line 451 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;  servoPin        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_enableWater
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	451
global __ptext4
__ptext4:	;psect for function _rotateLeft
psect	text4
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	451
	global	__size_of_rotateLeft
	__size_of_rotateLeft	equ	__end_of_rotateLeft-_rotateLeft
	
_rotateLeft:	
;incstack = 0
	opt	stack 4
; Regs used in _rotateLeft: [wreg-fsr0h+status,2+status,0]
	line	453
	
l2468:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 453: switch(servoPin)
	goto	l2480
	line	455
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 454: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 455: case 1:
	
l186:	
	line	456
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 456: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	457
	
l2470:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 457: _delay((unsigned long)((1000)*(4000000/4000000.0)));
	opt asmopt_off
movlw	249
movwf	(??_rotateLeft+0)+0,f
u3917:
	nop
decfsz	(??_rotateLeft+0)+0,f
	goto	u3917
	nop2	;nop
	nop
opt asmopt_on

	line	458
	
l2472:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 458: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	459
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 459: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_rotateLeft+0)+0+1),f
	movlw	248
movwf	((??_rotateLeft+0)+0),f
u3927:
	decfsz	((??_rotateLeft+0)+0),f
	goto	u3927
	decfsz	((??_rotateLeft+0)+0+1),f
	goto	u3927
	nop
opt asmopt_on

	line	460
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 460: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rotateLeft+0)+0+2),f
movlw	19
movwf	((??_rotateLeft+0)+0+1),f
	movlw	177
movwf	((??_rotateLeft+0)+0),f
u3937:
	decfsz	((??_rotateLeft+0)+0),f
	goto	u3937
	decfsz	((??_rotateLeft+0)+0+1),f
	goto	u3937
	decfsz	((??_rotateLeft+0)+0+2),f
	goto	u3937
	nop2
opt asmopt_on

	line	461
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 461: break;
	goto	l190
	line	462
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 462: case 2:
	
l188:	
	line	463
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 463: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	464
	
l2474:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 464: _delay((unsigned long)((1000)*(4000000/4000000.0)));
	opt asmopt_off
movlw	249
movwf	(??_rotateLeft+0)+0,f
u3947:
	nop
decfsz	(??_rotateLeft+0)+0,f
	goto	u3947
	nop2	;nop
	nop
opt asmopt_on

	line	465
	
l2476:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 465: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	466
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 466: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_rotateLeft+0)+0+1),f
	movlw	248
movwf	((??_rotateLeft+0)+0),f
u3957:
	decfsz	((??_rotateLeft+0)+0),f
	goto	u3957
	decfsz	((??_rotateLeft+0)+0+1),f
	goto	u3957
	nop
opt asmopt_on

	line	467
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 467: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rotateLeft+0)+0+2),f
movlw	19
movwf	((??_rotateLeft+0)+0+1),f
	movlw	177
movwf	((??_rotateLeft+0)+0),f
u3967:
	decfsz	((??_rotateLeft+0)+0),f
	goto	u3967
	decfsz	((??_rotateLeft+0)+0+1),f
	goto	u3967
	decfsz	((??_rotateLeft+0)+0+2),f
	goto	u3967
	nop2
opt asmopt_on

	line	468
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 468: break;
	goto	l190
	line	469
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 469: default:
	
l189:	
	line	470
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 470: break;
	goto	l190
	line	471
	
l2478:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 471: }
	goto	l190
	line	453
	
l185:	
	
l2480:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (rotateLeft@servoPin+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3312
	goto	l190
	opt asmopt_on
	
l3312:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           17    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (rotateLeft@servoPin),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l186
	xorlw	2^1	; case 2
	skipnz
	goto	l188
	goto	l190
	opt asmopt_on

	line	471
	
l187:	
	line	472
	
l190:	
	return
	opt stack 0
GLOBAL	__end_of_rotateLeft
	__end_of_rotateLeft:
	signat	_rotateLeft,4216
	global	_initSYS

;; *************** function _initSYS *****************
;; Defined at:
;;		line 157 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_disableWater
;;		_instCtrl
;;		_printString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	157
global __ptext5
__ptext5:	;psect for function _initSYS
psect	text5
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	157
	global	__size_of_initSYS
	__size_of_initSYS	equ	__end_of_initSYS-_initSYS
	
_initSYS:	
;incstack = 0
	opt	stack 4
; Regs used in _initSYS: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	159
	
l3000:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 159: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	160
	
l3002:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 160: printString("STARTING UP...");
	movlw	low((STR_2)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	161
	
l3004:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 161: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	162
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 162: printString("VALVE 1:  ON   [OFF]");
	movlw	low((STR_3)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	164
	
l3006:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 164: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	line	165
	
l3008:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 165: printString("VALVE 2:  ON   [OFF]");
	movlw	low((STR_4)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	166
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 166: instCtrl(0xD4);
	movlw	(0D4h)
	fcall	_instCtrl
	line	167
	
l3010:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 167: printString("WATER: ");
	movlw	low((STR_5)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	168
	
l3012:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 168: disableWater(1); disableWater(2);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(disableWater@servoPin)
	movlw	high(01h)
	movwf	((disableWater@servoPin))+1
	fcall	_disableWater
	
l3014:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(disableWater@servoPin)
	movlw	high(02h)
	movwf	((disableWater@servoPin))+1
	fcall	_disableWater
	line	169
	
l117:	
	return
	opt stack 0
GLOBAL	__end_of_initSYS
	__end_of_initSYS:
	signat	_initSYS,88
	global	_disableWater

;; *************** function _disableWater *****************
;; Defined at:
;;		line 421 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;  servoPin        2    3[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_rotateRight
;; This function is called by:
;;		_initSYS
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	421
global __ptext6
__ptext6:	;psect for function _disableWater
psect	text6
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	421
	global	__size_of_disableWater
	__size_of_disableWater	equ	__end_of_disableWater-_disableWater
	
_disableWater:	
;incstack = 0
	opt	stack 4
; Regs used in _disableWater: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	430
	
l2622:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 430: switch(servoPin)
	goto	l2634
	line	432
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 431: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 432: case 1:
	
l178:	
	line	433
	
l2624:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 433: rotateRight(1);
	movlw	low(01h)
	movwf	(rotateRight@servoPin)
	movlw	high(01h)
	movwf	((rotateRight@servoPin))+1
	fcall	_rotateRight
	line	434
	
l2626:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 434: servo_one_status = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_servo_one_status)
	clrf	(_servo_one_status+1)
	line	435
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 435: break;
	goto	l182
	line	436
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 436: case 2:
	
l180:	
	line	437
	
l2628:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 437: rotateRight(2);
	movlw	low(02h)
	movwf	(rotateRight@servoPin)
	movlw	high(02h)
	movwf	((rotateRight@servoPin))+1
	fcall	_rotateRight
	line	438
	
l2630:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 438: servo_two_status = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_servo_two_status)
	clrf	(_servo_two_status+1)
	line	439
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 439: break;
	goto	l182
	line	440
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 440: default:
	
l181:	
	line	441
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 441: break;
	goto	l182
	line	442
	
l2632:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 442: }
	goto	l182
	line	430
	
l177:	
	
l2634:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (disableWater@servoPin+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3314
	goto	l182
	opt asmopt_on
	
l3314:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           17    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (disableWater@servoPin),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2624
	xorlw	2^1	; case 2
	skipnz
	goto	l2628
	goto	l182
	opt asmopt_on

	line	442
	
l179:	
	line	443
	
l182:	
	return
	opt stack 0
GLOBAL	__end_of_disableWater
	__end_of_disableWater:
	signat	_disableWater,4216
	global	_rotateRight

;; *************** function _rotateRight *****************
;; Defined at:
;;		line 480 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;  servoPin        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_disableWater
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	480
global __ptext7
__ptext7:	;psect for function _rotateRight
psect	text7
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	480
	global	__size_of_rotateRight
	__size_of_rotateRight	equ	__end_of_rotateRight-_rotateRight
	
_rotateRight:	
;incstack = 0
	opt	stack 4
; Regs used in _rotateRight: [wreg-fsr0h+status,2+status,0]
	line	482
	
l2486:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 482: switch(servoPin)
	goto	l2498
	line	484
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 483: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 484: case 1:
	
l194:	
	line	485
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 485: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	486
	
l2488:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 486: _delay((unsigned long)((2000)*(4000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	((??_rotateRight+0)+0+1),f
	movlw	151
movwf	((??_rotateRight+0)+0),f
u3977:
	decfsz	((??_rotateRight+0)+0),f
	goto	u3977
	decfsz	((??_rotateRight+0)+0+1),f
	goto	u3977
	nop2
opt asmopt_on

	line	487
	
l2490:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 487: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	488
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 488: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_rotateRight+0)+0+1),f
	movlw	248
movwf	((??_rotateRight+0)+0),f
u3987:
	decfsz	((??_rotateRight+0)+0),f
	goto	u3987
	decfsz	((??_rotateRight+0)+0+1),f
	goto	u3987
	nop
opt asmopt_on

	line	489
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 489: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rotateRight+0)+0+2),f
movlw	19
movwf	((??_rotateRight+0)+0+1),f
	movlw	177
movwf	((??_rotateRight+0)+0),f
u3997:
	decfsz	((??_rotateRight+0)+0),f
	goto	u3997
	decfsz	((??_rotateRight+0)+0+1),f
	goto	u3997
	decfsz	((??_rotateRight+0)+0+2),f
	goto	u3997
	nop2
opt asmopt_on

	line	490
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 490: break;
	goto	l198
	line	491
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 491: case 2:
	
l196:	
	line	492
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 492: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	493
	
l2492:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 493: _delay((unsigned long)((2000)*(4000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	((??_rotateRight+0)+0+1),f
	movlw	151
movwf	((??_rotateRight+0)+0),f
u4007:
	decfsz	((??_rotateRight+0)+0),f
	goto	u4007
	decfsz	((??_rotateRight+0)+0+1),f
	goto	u4007
	nop2
opt asmopt_on

	line	494
	
l2494:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 494: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	495
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 495: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_rotateRight+0)+0+1),f
	movlw	248
movwf	((??_rotateRight+0)+0),f
u4017:
	decfsz	((??_rotateRight+0)+0),f
	goto	u4017
	decfsz	((??_rotateRight+0)+0+1),f
	goto	u4017
	nop
opt asmopt_on

	line	496
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 496: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rotateRight+0)+0+2),f
movlw	19
movwf	((??_rotateRight+0)+0+1),f
	movlw	177
movwf	((??_rotateRight+0)+0),f
u4027:
	decfsz	((??_rotateRight+0)+0),f
	goto	u4027
	decfsz	((??_rotateRight+0)+0+1),f
	goto	u4027
	decfsz	((??_rotateRight+0)+0+2),f
	goto	u4027
	nop2
opt asmopt_on

	line	497
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 497: break;
	goto	l198
	line	498
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 498: default:
	
l197:	
	line	499
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 499: break;
	goto	l198
	line	500
	
l2496:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 500: }
	goto	l198
	line	482
	
l193:	
	
l2498:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (rotateRight@servoPin+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3316
	goto	l198
	opt asmopt_on
	
l3316:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           17    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (rotateRight@servoPin),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l194
	xorlw	2^1	; case 2
	skipnz
	goto	l196
	goto	l198
	opt asmopt_on

	line	500
	
l195:	
	line	501
	
l198:	
	return
	opt stack 0
GLOBAL	__end_of_rotateRight
	__end_of_rotateRight:
	signat	_rotateRight,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 543 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	543
global __ptext8
__ptext8:	;psect for function _initLCD
psect	text8
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	543
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	545
	
l2998:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 545: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	546
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 546: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	547
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 547: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	548
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 548: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	549
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 549: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	550
	
l209:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_checkWaterLevel

;; *************** function _checkWaterLevel *****************
;; Defined at:
;;		line 321 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   16[BANK1 ] int 
;;  percentage     10    0[BANK1 ] unsigned char [10]
;;  percentValue    2   14[BANK1 ] int 
;;  distance        2   12[BANK1 ] int 
;;  duration        2   10[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      18       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      18       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awmod
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lwtoft
;;		_instCtrl
;;		_printString
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	321
global __ptext9
__ptext9:	;psect for function _checkWaterLevel
psect	text9
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	321
	global	__size_of_checkWaterLevel
	__size_of_checkWaterLevel	equ	__end_of_checkWaterLevel-_checkWaterLevel
	
_checkWaterLevel:	
;incstack = 0
	opt	stack 4
; Regs used in _checkWaterLevel: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	323
	
l3016:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 323: TMR1H = TMR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	clrf	(15)	;volatile
	line	324
	
l3018:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 324: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	325
	
l3020:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 325: _delay((unsigned long)((10)*(4000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_checkWaterLevel+0)+0,f
u4037:
decfsz	(??_checkWaterLevel+0)+0,f
	goto	u4037
opt asmopt_on

	line	327
	
l3022:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 327: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	329
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 329: while(!RB2);
	goto	l146
	
l147:	
	
l146:	
	btfss	(50/8),(50)&7	;volatile
	goto	u3711
	goto	u3710
u3711:
	goto	l146
u3710:
	
l148:	
	line	330
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 330: TMR1ON = 1;
	bsf	(128/8),(128)&7	;volatile
	line	331
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 331: while(RB2);
	goto	l149
	
l150:	
	
l149:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u3721
	goto	u3720
u3721:
	goto	l149
u3720:
	goto	l3024
	
l151:	
	line	333
	
l3024:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 333: unsigned int duration = (int)(((TMR1H << 8)|(TMR1L)));
	movf	(15),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkWaterLevel@duration+1)^080h
	addwf	(checkWaterLevel@duration+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkWaterLevel@duration)^080h
	addwf	(checkWaterLevel@duration)^080h

	line	334
	
l3026:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 334: TMR1ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7	;volatile
	line	335
	
l3028:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 335: int distance = duration*(0.034/2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(checkWaterLevel@duration+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(checkWaterLevel@duration)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftmul@f2+2)
	movlw	0x44
	movwf	(___ftmul@f1)
	movlw	0x8b
	movwf	(___ftmul@f1+1)
	movlw	0x3c
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkWaterLevel@distance+1)^080h
	addwf	(checkWaterLevel@distance+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkWaterLevel@distance)^080h
	addwf	(checkWaterLevel@distance)^080h

	line	336
	
l3030:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 336: collection[index++] = distance;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_index),w
	movwf	(??_checkWaterLevel+0)+0
	addwf	(??_checkWaterLevel+0)+0,w
	addlw	_collection&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(checkWaterLevel@distance)^080h,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(checkWaterLevel@distance+1)^080h,w
	movwf	indf
	
l3032:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_index),f
	skipnc
	incf	(_index+1),f
	movlw	high(01h)
	addwf	(_index+1),f
	line	337
	
l3034:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 337: for(int i=0;i<10;i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkWaterLevel@i)^080h
	clrf	(checkWaterLevel@i+1)^080h
	
l3036:	
	movf	(checkWaterLevel@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3735
	movlw	low(0Ah)
	subwf	(checkWaterLevel@i)^080h,w
u3735:

	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l3040
u3730:
	goto	l3046
	
l3038:	
	goto	l3046
	line	338
	
l152:	
	line	339
	
l3040:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 338: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 339: avg += collection[i];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(checkWaterLevel@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_checkWaterLevel+0)+0
	addwf	(??_checkWaterLevel+0)+0,w
	addlw	_collection&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(___lwtoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lwtoft@c+1)
	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f1+2)
	movf	(_avg),w
	movwf	(___ftadd@f2)
	movf	(_avg+1),w
	movwf	(___ftadd@f2+1)
	movf	(_avg+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_avg)
	movf	(1+(?___ftadd)),w
	movwf	(_avg+1)
	movf	(2+(?___ftadd)),w
	movwf	(_avg+2)
	line	337
	
l3042:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(checkWaterLevel@i)^080h,f
	skipnc
	incf	(checkWaterLevel@i+1)^080h,f
	movlw	high(01h)
	addwf	(checkWaterLevel@i+1)^080h,f
	
l3044:	
	movf	(checkWaterLevel@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3745
	movlw	low(0Ah)
	subwf	(checkWaterLevel@i)^080h,w
u3745:

	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3040
u3740:
	goto	l3046
	
l153:	
	line	341
	
l3046:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 340: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 341: avg /= 10;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movlw	0x20
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	movf	(_avg),w
	movwf	(___ftdiv@f1)
	movf	(_avg+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_avg+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(_avg)
	movf	(1+(?___ftdiv)),w
	movwf	(_avg+1)
	movf	(2+(?___ftdiv)),w
	movwf	(_avg+2)
	line	343
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 343: avg <= 2? avg = 0 : avg = avg;
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(_avg),w
	movwf	(___ftge@ff2)
	movf	(_avg+1),w
	movwf	(___ftge@ff2+1)
	movf	(_avg+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u3751
	goto	u3750
u3751:
	goto	l3050
u3750:
	
l3048:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_avg)
	movlw	0x0
	movwf	(_avg+1)
	movlw	0x0
	movwf	(_avg+2)
	goto	l3050
	
l155:	
	goto	l3050
	
l157:	
	line	344
	
l3050:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 344: avg >= 20? avg = 20: avg = avg;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_avg),w
	movwf	(___ftge@ff1)
	movf	(_avg+1),w
	movwf	(___ftge@ff1+1)
	movf	(_avg+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xa0
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u3761
	goto	u3760
u3761:
	goto	l3054
u3760:
	
l3052:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_avg)
	movlw	0xa0
	movwf	(_avg+1)
	movlw	0x41
	movwf	(_avg+2)
	goto	l3054
	
l159:	
	goto	l3054
	
l161:	
	line	346
	
l3054:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 346: int percentValue = 100-(avg*5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_avg),w
	movwf	(___ftmul@f2)
	movf	(_avg+1),w
	movwf	(___ftmul@f2+1)
	movf	(_avg+2),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xa0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkWaterLevel@percentValue+1)^080h
	addwf	(checkWaterLevel@percentValue+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkWaterLevel@percentValue)^080h
	addwf	(checkWaterLevel@percentValue)^080h

	line	347
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 347: index = index % 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(_index+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_index),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_index+1)
	addwf	(_index+1)
	movf	(0+(?___awmod)),w
	clrf	(_index)
	addwf	(_index)

	line	349
	
l3056:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 348: char percentage[10];
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 349: instCtrl(0xDA);
	movlw	(0DAh)
	fcall	_instCtrl
	line	350
	
l3058:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 350: printString("    ");
	movlw	low((STR_17)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	351
	
l3060:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 351: instCtrl(0xDA);
	movlw	(0DAh)
	fcall	_instCtrl
	line	352
	
l3062:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 352: sprintf(percentage, "%d%%", percentValue);
	movlw	((STR_18)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_checkWaterLevel+0)+0
	movf	(??_checkWaterLevel+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(checkWaterLevel@percentValue+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(checkWaterLevel@percentValue)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(checkWaterLevel@percentage)&0ffh
	fcall	_sprintf
	line	353
	
l3064:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 353: printString(percentage);
	movlw	(checkWaterLevel@percentage&0ffh)
	movwf	(printString@string)
	movlw	(0x0)
	movwf	(printString@string+1)
	fcall	_printString
	line	354
	
l3066:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 354: if(percentValue == 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((checkWaterLevel@percentValue+1)^080h),w
	iorwf	((checkWaterLevel@percentValue)^080h),w
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l3076
u3770:
	line	356
	
l3068:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 355: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 356: schedulerFlag = 0;
	clrf	(_schedulerFlag)^080h
	clrf	(_schedulerFlag+1)^080h
	line	357
	
l3070:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 357: empty = 1;
	movlw	low(01h)
	movwf	(_empty)
	movlw	high(01h)
	movwf	((_empty))+1
	line	358
	
l3072:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 358: TMR0IE = 0;
	bcf	(93/8),(93)&7	;volatile
	line	359
	
l3074:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 359: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	360
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 360: }
	goto	l166
	line	361
	
l162:	
	
l3076:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 361: else if(percentValue < 50)
	movf	(checkWaterLevel@percentValue+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3785
	movlw	low(032h)
	subwf	(checkWaterLevel@percentValue)^080h,w
u3785:

	skipnc
	goto	u3781
	goto	u3780
u3781:
	goto	l3090
u3780:
	line	363
	
l3078:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 362: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 363: schedulerFlag = 1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_schedulerFlag)^080h
	movlw	high(01h)
	movwf	((_schedulerFlag)^080h)+1
	line	364
	
l3080:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 364: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	365
	
l3082:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 365: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	366
	
l3084:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 366: empty = 0;
	clrf	(_empty)
	clrf	(_empty+1)
	line	367
	
l3086:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 367: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	368
	
l3088:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 368: printString("             ");
	movlw	low((STR_19)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	369
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 369: }
	goto	l166
	line	370
	
l164:	
	line	372
	
l3090:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 370: else
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 371: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 372: schedulerFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_schedulerFlag)^080h
	clrf	(_schedulerFlag+1)^080h
	line	373
	
l3092:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 373: TMR0IE = 0;
	bcf	(93/8),(93)&7	;volatile
	line	374
	
l3094:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 374: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	375
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 375: empty = 0;
	clrf	(_empty)
	clrf	(_empty+1)
	line	376
	
l3096:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 376: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	377
	
l3098:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 377: printString("             ");
	movlw	low((STR_20)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	goto	l166
	line	378
	
l165:	
	goto	l166
	
l163:	
	line	380
	
l166:	
	return
	opt stack 0
GLOBAL	__end_of_checkWaterLevel
	__end_of_checkWaterLevel:
	signat	_checkWaterLevel,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> checkWaterLevel@percentage(10), updateDisplay@seconds_str(10), 
;;  f               1   12[BANK0 ] PTR const unsigned char 
;;		 -> STR_18(5), STR_6(6), 
;; Auto vars:     Size  Location     Type
;;  sp              1   25[BANK0 ] PTR unsigned char 
;;		 -> checkWaterLevel@percentage(10), updateDisplay@seconds_str(10), 
;;  _val            4   21[BANK0 ] struct .
;;  c               1   26[BANK0 ] char 
;;  prec            1   20[BANK0 ] char 
;;  flag            1   19[BANK0 ] unsigned char 
;;  ap              1   18[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_updateDisplay
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext10
__ptext10:	;psect for function _sprintf
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l2640:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l2696
	
l235:	
	line	547
	
l2642:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2921
	goto	u2920
u2921:
	goto	l2648
u2920:
	line	550
	
l2644:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2646:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l2696
	line	552
	
l236:	
	line	557
	
l2648:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l2656
	line	646
;doprnt.c: 646: case 0:
	
l238:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l2698
	line	706
;doprnt.c: 706: case 'd':
	
l240:	
	goto	l2658
	line	707
	
l241:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2658
	line	811
;doprnt.c: 811: default:
	
l243:	
	line	818
	
l2650:	
;doprnt.c: 818: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2652:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	819
;doprnt.c: 819: continue;
	goto	l2696
	line	831
	
l2654:	
;doprnt.c: 831: }
	goto	l2658
	line	644
	
l237:	
	
l2656:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2698
	xorlw	100^0	; case 100
	skipnz
	goto	l2658
	xorlw	105^100	; case 105
	skipnz
	goto	l2658
	goto	l2650
	opt asmopt_on

	line	831
	
l242:	
	line	1268
	
l2658:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2660:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l2662:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u2931
	goto	u2930
u2931:
	goto	l2668
u2930:
	line	1271
	
l2664:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l2666:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l2668
	line	1273
	
l244:	
	line	1314
	
l2668:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l2672
u2940:
	goto	l2680
	
l2670:	
	goto	l2680
	line	1315
	
l245:	
	
l2672:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u2955
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2955:
	skipnc
	goto	u2951
	goto	u2950
u2951:
	goto	l2676
u2950:
	goto	l2680
	line	1316
	
l2674:	
;doprnt.c: 1316: break;
	goto	l2680
	
l247:	
	line	1314
	
l2676:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2678:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l2672
u2960:
	goto	l2680
	
l246:	
	line	1447
	
l2680:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l2686
u2970:
	line	1448
	
l2682:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2684:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2686
	
l248:	
	line	1481
	
l2686:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2694
	
l250:	
	line	1498
	
l2688:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
l2690:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2692:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2694
	line	1534
	
l249:	
	line	1483
	
l2694:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l2688
u2980:
	goto	l2696
	
l251:	
	goto	l2696
	line	1542
	
l234:	
	line	545
	
l2696:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l2642
u2990:
	goto	l2698
	
l252:	
	goto	l2698
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l239:	
	line	1547
	
l2698:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l253
	line	1549
	
l2700:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l253:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] unsigned int 
;;  dividend        2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___lwmod
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2576:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2831
	goto	u2830
u2831:
	goto	l2594
u2830:
	line	14
	
l2578:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2584
	
l678:	
	line	16
	
l2580:	
	movlw	01h
	
u2845:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2845
	line	17
	
l2582:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2584
	line	18
	
l677:	
	line	15
	
l2584:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l2580
u2850:
	goto	l2586
	
l679:	
	goto	l2586
	line	19
	
l680:	
	line	20
	
l2586:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2865
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2865:
	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l2590
u2860:
	line	21
	
l2588:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2590
	
l681:	
	line	22
	
l2590:	
	movlw	01h
	
u2875:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2875
	line	23
	
l2592:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2586
u2880:
	goto	l2594
	
l682:	
	goto	l2594
	line	24
	
l676:	
	line	25
	
l2594:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l683
	
l2596:	
	line	26
	
l683:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___lwdiv
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2550:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2552:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2761
	goto	u2760
u2761:
	goto	l2572
u2760:
	line	16
	
l2554:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2560
	
l668:	
	line	18
	
l2556:	
	movlw	01h
	
u2775:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2775
	line	19
	
l2558:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2560
	line	20
	
l667:	
	line	17
	
l2560:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l2556
u2780:
	goto	l2562
	
l669:	
	goto	l2562
	line	21
	
l670:	
	line	22
	
l2562:	
	movlw	01h
	
u2795:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2795
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2805
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2805:
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l2568
u2800:
	line	24
	
l2564:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2566:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2568
	line	26
	
l671:	
	line	27
	
l2568:	
	movlw	01h
	
u2815:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2815
	line	28
	
l2570:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2562
u2820:
	goto	l2572
	
l672:	
	goto	l2572
	line	29
	
l666:	
	line	30
	
l2572:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l673
	
l2574:	
	line	31
	
l673:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_printString

;; *************** function _printString *****************
;; Defined at:
;;		line 588 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;  string          2    4[COMMON] PTR unsigned char 
;;		 -> STR_20(14), STR_19(14), checkWaterLevel@percentage(10), STR_17(5), 
;;		 -> STR_16(13), STR_15(13), STR_14(14), STR_13(13), 
;;		 -> STR_12(13), STR_11(19), STR_10(13), STR_9(13), 
;;		 -> STR_8(13), STR_7(13), updateDisplay@seconds_str(10), STR_5(8), 
;;		 -> STR_4(21), STR_3(21), STR_2(15), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;;		_initSYS
;;		_updateDisplay
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	588
global __ptext13
__ptext13:	;psect for function _printString
psect	text13
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	588
	global	__size_of_printString
	__size_of_printString	equ	__end_of_printString-_printString
	
_printString:	
;incstack = 0
	opt	stack 4
; Regs used in _printString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	590
	
l2614:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 590: while(*string)
	goto	l2620
	
l223:	
	line	592
	
l2616:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 591: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 592: dataCtrl(*string++);
	movf	(printString@string+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printString@string),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCtrl
	
l2618:	
	movlw	01h
	addwf	(printString@string),f
	skipnc
	incf	(printString@string+1),f
	goto	l2620
	line	593
	
l222:	
	line	590
	
l2620:	
	movf	(printString@string+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printString@string),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l2616
u2910:
	goto	l225
	
l224:	
	line	594
	
l225:	
	return
	opt stack 0
GLOBAL	__end_of_printString
	__end_of_printString:
	signat	_printString,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 558 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] unsigned char 
;;  i               2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printString
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	558
global __ptext14
__ptext14:	;psect for function _dataCtrl
psect	text14
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	558
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _dataCtrl: [wreg+status,2+btemp+1]
;dataCtrl@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@data)
	line	560
	
l2504:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 560: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	561
	
l2506:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 561: PORTD = data;
	movf	(dataCtrl@data),w
	movwf	(8)	;volatile
	line	562
	
l2508:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 562: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	563
	
l2510:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 563: for(int i = 0; i < 1000; i++);
	clrf	(dataCtrl@i)
	clrf	(dataCtrl@i+1)
	
l2512:	
	movf	(dataCtrl@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2635
	movlw	low(03E8h)
	subwf	(dataCtrl@i),w
u2635:

	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l2516
u2630:
	goto	l213
	
l2514:	
	goto	l213
	
l212:	
	
l2516:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dataCtrl@i),f
	skipnc
	incf	(dataCtrl@i+1),f
	movlw	high(01h)
	addwf	(dataCtrl@i+1),f
	
l2518:	
	movf	(dataCtrl@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2645
	movlw	low(03E8h)
	subwf	(dataCtrl@i),w
u2645:

	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2516
u2640:
	
l213:	
	line	564
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 564: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	565
	
l214:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 573 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;  inst            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  inst            1    0[BANK0 ] unsigned char 
;;  i               2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_initSYS
;;		_updateDisplay
;;		_checkWaterLevel
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	573
global __ptext15
__ptext15:	;psect for function _instCtrl
psect	text15
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	573
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+btemp+1]
;instCtrl@inst stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@inst)
	line	575
	
l2598:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 575: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	576
	
l2600:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 576: PORTD = inst;
	movf	(instCtrl@inst),w
	movwf	(8)	;volatile
	line	577
	
l2602:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 577: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	578
	
l2604:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 578: for(int i = 0; i < 1000; i++);
	clrf	(instCtrl@i)
	clrf	(instCtrl@i+1)
	
l2606:	
	movf	(instCtrl@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2895
	movlw	low(03E8h)
	subwf	(instCtrl@i),w
u2895:

	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l2610
u2890:
	goto	l218
	
l2608:	
	goto	l218
	
l217:	
	
l2610:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(instCtrl@i),f
	skipnc
	incf	(instCtrl@i+1),f
	movlw	high(01h)
	addwf	(instCtrl@i+1),f
	
l2612:	
	movf	(instCtrl@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2905
	movlw	low(03E8h)
	subwf	(instCtrl@i),w
u2905:

	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l2610
u2900:
	
l218:	
	line	579
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 579: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	580
	
l219:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext16
__ptext16:	;psect for function ___lwtoft
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2994:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l688
	
l2996:	
	line	31
	
l688:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   43[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   52[BANK0 ] unsigned long 
;;  exp1            1   56[BANK0 ] unsigned char 
;;  sign1           1   51[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   43[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext17
__ptext17:	;psect for function ___fttol
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2950:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l2956
u3610:
	line	50
	
l2952:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l579
	
l2954:	
	goto	l579
	
l578:	
	line	51
	
l2956:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3625:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3620:
	addlw	-1
	skipz
	goto	u3625
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2958:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2960:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2962:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2964:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2966:	
	btfss	(___fttol@exp1),7
	goto	u3631
	goto	u3630
u3631:
	goto	l2976
u3630:
	line	57
	
l2968:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l2974
u3640:
	line	58
	
l2970:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l579
	
l2972:	
	goto	l579
	
l581:	
	goto	l2974
	line	59
	
l582:	
	line	60
	
l2974:	
	movlw	01h
u3655:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3655

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l2974
u3660:
	goto	l2986
	
l583:	
	line	62
	goto	l2986
	
l580:	
	line	63
	
l2976:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l2984
u3670:
	line	64
	
l2978:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l579
	
l2980:	
	goto	l579
	
l585:	
	line	65
	goto	l2984
	
l587:	
	line	66
	
l2982:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3685:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3685
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2984
	line	68
	
l586:	
	line	65
	
l2984:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l2982
u3690:
	goto	l2986
	
l588:	
	goto	l2986
	line	69
	
l584:	
	line	70
	
l2986:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3700
	goto	l2990
u3700:
	line	71
	
l2988:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l2990
	
l589:	
	line	72
	
l2990:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l579
	
l2992:	
	line	73
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   27[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   27[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext18
__ptext18:	;psect for function ___ftneg
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l2942:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3601
	goto	u3600
u3601:
	goto	l2946
u3600:
	line	18
	
l2944:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l2946
	
l569:	
	line	19
	
l2946:	
	goto	l570
	
l2948:	
	line	20
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[BANK0 ] float 
;;  f2              3   14[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   22[BANK0 ] unsigned um
;;  sign            1   26[BANK0 ] unsigned char 
;;  cntr            1   25[BANK0 ] unsigned char 
;;  exp             1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext19
__ptext19:	;psect for function ___ftmul
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l2892:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l2898
u3460:
	line	68
	
l2894:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l559
	
l2896:	
	goto	l559
	
l558:	
	line	69
	
l2898:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l2904
u3470:
	line	70
	
l2900:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l559
	
l2902:	
	goto	l559
	
l560:	
	line	71
	
l2904:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3485:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3480:
	addlw	-1
	skipz
	goto	u3485
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3495:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3490:
	addlw	-1
	skipz
	goto	u3495
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l2906:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2908:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2910:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2912:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2914:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2916
	line	135
	
l561:	
	line	136
	
l2916:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l2920
u3500:
	line	137
	
l2918:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3511
	addwf	(___ftmul@f3_as_product+1),f
u3511:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3512
	addwf	(___ftmul@f3_as_product+2),f
u3512:

	goto	l2920
	
l562:	
	line	138
	
l2920:	
	movlw	01h
u3525:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3525

	line	139
	
l2922:	
	movlw	01h
u3535:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3535
	line	140
	
l2924:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l2916
u3540:
	goto	l2926
	
l563:	
	line	143
	
l2926:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2928
	line	144
	
l564:	
	line	145
	
l2928:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l2932
u3550:
	line	146
	
l2930:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3561
	addwf	(___ftmul@f3_as_product+1),f
u3561:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3562
	addwf	(___ftmul@f3_as_product+2),f
u3562:

	goto	l2932
	
l565:	
	line	147
	
l2932:	
	movlw	01h
u3575:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3575

	line	148
	
l2934:	
	movlw	01h
u3585:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3585

	line	149
	
l2936:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l2928
u3590:
	goto	l2938
	
l566:	
	line	156
	
l2938:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l559
	
l2940:	
	line	157
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext20
__ptext20:	;psect for function ___ftge
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2872:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l2876
u3410:
	line	7
	
l2874:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3421
	goto	u3422
u3421:
	addwf	(??___ftge+0)+1,f
	
u3422:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3423
	goto	u3424
u3423:
	addwf	(??___ftge+0)+2,f
	
u3424:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2876
	
l551:	
	line	8
	
l2876:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l2880
u3430:
	line	9
	
l2878:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3441
	goto	u3442
u3441:
	addwf	(??___ftge+0)+1,f
	
u3442:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3443
	goto	u3444
u3443:
	addwf	(??___ftge+0)+2,f
	
u3444:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2880
	
l552:	
	line	10
	
l2880:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2882:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2884:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3455
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3455
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3455:
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l2888
u3450:
	
l2886:	
	clrc
	
	goto	l553
	
l2464:	
	
l2888:	
	setc
	
	goto	l553
	
l2466:	
	goto	l553
	
l2890:	
	line	13
	
l553:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[BANK0 ] float 
;;  f1              3   11[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   19[BANK0 ] float 
;;  sign            1   23[BANK0 ] unsigned char 
;;  exp             1   22[BANK0 ] unsigned char 
;;  cntr            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext21
__ptext21:	;psect for function ___ftdiv
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2830:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l2836
u3330:
	line	56
	
l2832:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l544
	
l2834:	
	goto	l544
	
l543:	
	line	57
	
l2836:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l2842
u3340:
	line	58
	
l2838:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l544
	
l2840:	
	goto	l544
	
l545:	
	line	59
	
l2842:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2844:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2846:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3355:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3350:
	addlw	-1
	skipz
	goto	u3355
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2848:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3365:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3360:
	addlw	-1
	skipz
	goto	u3365
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2850:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2852:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2854:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l2856
	line	69
	
l546:	
	line	70
	
l2856:	
	movlw	01h
u3375:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3375
	line	71
	
l2858:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3385
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3385
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3385:
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l2864
u3380:
	line	72
	
l2860:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l2862:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2864
	line	74
	
l547:	
	line	75
	
l2864:	
	movlw	01h
u3395:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3395
	line	76
	
l2866:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l2856
u3400:
	goto	l2868
	
l548:	
	line	77
	
l2868:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l544
	
l2870:	
	line	78
	
l544:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   30[BANK0 ] float 
;;  f2              3   33[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   42[BANK0 ] unsigned char 
;;  exp2            1   41[BANK0 ] unsigned char 
;;  sign            1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   30[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext22
__ptext22:	;psect for function ___ftadd
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2758:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l2760:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3090
	goto	l2766
u3090:
	
l2762:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3101
	goto	u3100
u3101:
	goto	l2770
u3100:
	
l2764:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l2770
u3110:
	goto	l2766
	
l512:	
	line	93
	
l2766:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l513
	
l2768:	
	goto	l513
	
l510:	
	line	94
	
l2770:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3120
	goto	l516
u3120:
	
l2772:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l2776
u3130:
	
l2774:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l2776
u3140:
	
l516:	
	line	95
	goto	l513
	
l514:	
	line	96
	
l2776:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2778:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l517
u3150:
	line	98
	
l2780:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l517:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l518
u3160:
	line	100
	
l2782:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l518:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2784:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2786:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3171
	goto	u3170
u3171:
	goto	l2798
u3170:
	goto	l2788
	line	109
	
l520:	
	line	110
	
l2788:	
	movlw	01h
u3185:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3185
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2790:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3191
	goto	u3190
u3191:
	goto	l2796
u3190:
	
l2792:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l2788
u3200:
	goto	l2796
	
l522:	
	goto	l2796
	
l523:	
	line	113
	goto	l2796
	
l525:	
	line	114
	
l2794:	
	movlw	01h
u3215:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3215

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2796
	line	116
	
l524:	
	line	113
	
l2796:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l2794
u3220:
	goto	l527
	
l526:	
	line	117
	goto	l527
	
l519:	
	
l2798:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3231
	goto	u3230
u3231:
	goto	l527
u3230:
	goto	l2800
	line	120
	
l529:	
	line	121
	
l2800:	
	movlw	01h
u3245:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u3245
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2802:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3251
	goto	u3250
u3251:
	goto	l2808
u3250:
	
l2804:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l2800
u3260:
	goto	l2808
	
l531:	
	goto	l2808
	
l532:	
	line	124
	goto	l2808
	
l534:	
	line	125
	
l2806:	
	movlw	01h
u3275:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3275

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2808
	line	127
	
l533:	
	line	124
	
l2808:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l2806
u3280:
	goto	l527
	
l535:	
	goto	l527
	line	128
	
l528:	
	line	129
	
l527:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l2812
u3290:
	line	131
	
l2810:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l2812
	line	133
	
l536:	
	line	134
	
l2812:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l2816
u3300:
	line	136
	
l2814:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l2816
	line	138
	
l537:	
	line	139
	
l2816:	
	clrf	(___ftadd@sign)
	line	140
	
l2818:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3311
	addwf	(___ftadd@f2+1),f
u3311:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3312
	addwf	(___ftadd@f2+2),f
u3312:

	line	141
	
l2820:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l2826
u3320:
	line	142
	
l2822:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l2824:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l2826
	line	145
	
l538:	
	line	146
	
l2826:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l513
	
l2828:	
	line	148
	
l513:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext23
__ptext23:	;psect for function ___ftpack
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2520:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u2650
	goto	l2524
u2650:
	
l2522:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l2530
u2660:
	goto	l2524
	
l493:	
	line	65
	
l2524:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l494
	
l2526:	
	goto	l494
	
l491:	
	line	66
	goto	l2530
	
l496:	
	line	67
	
l2528:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2675:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2675

	goto	l2530
	line	69
	
l495:	
	line	66
	
l2530:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2528
u2680:
	goto	l498
	
l497:	
	line	70
	goto	l498
	
l499:	
	line	71
	
l2532:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2534:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l2536:	
	movlw	01h
u2695:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2695

	line	74
	
l498:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2532
u2700:
	goto	l2540
	
l500:	
	line	75
	goto	l2540
	
l502:	
	line	76
	
l2538:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2715:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2715
	goto	l2540
	line	78
	
l501:	
	line	75
	
l2540:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l2538
u2720:
	
l503:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l504
u2730:
	line	80
	
l2542:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l504:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2544:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2745:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2740:
	addlw	-1
	skipz
	goto	u2745
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2546:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2750
	goto	l505
u2750:
	line	84
	
l2548:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l505:	
	line	85
	line	86
	
l494:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkWaterLevel
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext24
__ptext24:	;psect for function ___awmod
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2720:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l2722:	
	btfss	(___awmod@dividend+1),7
	goto	u3001
	goto	u3000
u3001:
	goto	l2728
u3000:
	line	15
	
l2724:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2726:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2728
	line	17
	
l472:	
	line	18
	
l2728:	
	btfss	(___awmod@divisor+1),7
	goto	u3011
	goto	u3010
u3011:
	goto	l2732
u3010:
	line	19
	
l2730:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2732
	
l473:	
	line	20
	
l2732:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3021
	goto	u3020
u3021:
	goto	l2750
u3020:
	line	21
	
l2734:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2740
	
l476:	
	line	23
	
l2736:	
	movlw	01h
	
u3035:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3035
	line	24
	
l2738:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2740
	line	25
	
l475:	
	line	22
	
l2740:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l2736
u3040:
	goto	l2742
	
l477:	
	goto	l2742
	line	26
	
l478:	
	line	27
	
l2742:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3055
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3055:
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l2746
u3050:
	line	28
	
l2744:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2746
	
l479:	
	line	29
	
l2746:	
	movlw	01h
	
u3065:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3065
	line	30
	
l2748:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l2742
u3070:
	goto	l2750
	
l480:	
	goto	l2750
	line	31
	
l474:	
	line	32
	
l2750:	
	movf	(___awmod@sign),w
	skipz
	goto	u3080
	goto	l2754
u3080:
	line	33
	
l2752:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2754
	
l481:	
	line	34
	
l2754:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l482
	
l2756:	
	line	35
	
l482:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 102 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	102
global __ptext25
__ptext25:	;psect for function _ISR
psect	text25
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Automated_Water_Distribution\build\Alin_Ceballos_Francis_Gere_Ratificar_DP.c"
	line	102
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text25
	line	104
	
i1l2350:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 104: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	105
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 105: if(TMR0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l2356
u262_20:
	line	107
	
i1l2352:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 106: {
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 107: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	108
	
i1l2354:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 108: countflag = 1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_countflag)^080h
	movlw	high(01h)
	movwf	((_countflag)^080h)+1
	goto	i1l2356
	line	109
	
i1l107:	
	line	110
	
i1l2356:	
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 109: }
;Alin_Ceballos_Francis_Gere_Ratificar_DP.c: 110: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	111
	
i1l108:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
