  IFND DEVICES_CIA_I
DEVICES_CIA_I	SET	1
**
**	$VER: cia.i 36.3 (1.5.90)
**	Includes Release 40.15
**
**	Cia resource name strings.
**
**	(C) Copyright 1985-1993 Commodore-Amiga Inc.
**		All Rights Reserved
**
*	This file was created for the Optimizing Macro Assembler

    IFND LVO_CIA_I
      INCLUDE "lvo/cia.i"
    ENDC

CIAANAME MACRO
    DC.B 'ciaa.resource',0
    ENDM

CIABNAME MACRO
    DC.B 'ciab.resource',0
    ENDM

CALLCIA MACRO
    move.l  _CIABase(pc),a6
    jsr     _LVO\1(a6)
    ENDM

CALLCIAQ MACRO
    move.l  _CIABase(pc),a6
    jmp      _LVO\1(a6)
    ENDM

  ENDC	; DEVICES_CIA_I
