  IFND INTUITION_INTUITION_LIB_I
INTUITION_INTUITION_LIB_I EQU 1

    IFND LVO_INTUITION_I
      INCLUDE "lvo/intuition.i"
    ENDC

INTNAME MACRO
    DC.B 'intuition.library',0
    ENDM

CALLINT MACRO
    move.l  _IntuitionBase(pc),a6
    jsr     _LVO\1(a6)
    ENDM

CALLINTQ MACRO
    move.l  _IntuitionBase(pc),a6
    jmp	    _LVO\1(a6)
    ENDM

  ENDC
