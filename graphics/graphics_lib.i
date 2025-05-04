  IFND	GRAPHICS_GRAPHICS_LIB_I
GRAPHICS_GRAPHICS_LIB_I	EQU 1
*	Original include file (C) by Commodore-Amiga, Inc.
*	This file was created for the Optimizing Macro Assembler

    IFND LVO_GRAPHICS_I
      INCLUDE "lvo/graphics.i"
    ENDC

GRAFNAME MACRO
    dc.b "graphics.library",0
    ENDM

CALLGRAF MACRO
    move.l  _GfxBase(pc),a6
    jsr     _LVO\1(a6)
    ENDM

CALLGRAFQ MACRO
    move.l  _GfxBase(pc),a6
    jmp	    _LVO\1(a6)
    ENDM

  ENDC
