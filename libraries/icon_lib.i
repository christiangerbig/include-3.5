	IFND	ICON_ICON_LIB_I
ICON_ICON_LIB_I	EQU	1
*	$Filename: libraries/icon_lib.i $
*	$Release: 2.04 Includes, V37.4 $
*	$Revision: 36.1 $
*	$Date: 90/11/04 $
*	Library interface offsets for icon library
*	(C) Copyright 1985-1991 Commodore-Amiga, Inc.
*	    All Rights Reserved
*	This file was modified for the Optimizing Macro Assembler:
*	    Includes lvo/dos.i and defines CALLICON macro.

	IFND	LVO_ICON_I
	INCLUDE	"lvo/icon.i"
	ENDC
CALLICON MACRO
	move.l	_IconBase(pc),a6
	jsr	_LVO\1(a6)
	ENDM
	ENDC
