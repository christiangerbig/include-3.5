  IFND ASL_ASL_LIB_I
ASL_ASL_LIB_I EQU 1
* This file was modified for the Optimizing Macro Assembler:
* Includes lvo/asl.i and defines CALLASL macro.

    IFND LVO_ASL_I
      INCLUDE "lvo/asl.i"
    ENDC

CALLASL MACRO
    move.l  _AslBase(pc),a6
    jsr     _LVO\1(a6)
    ENDM

CALLASLQ MACRO
    move.l  _AslBase(pc),a6
    jmp     _LVO\1(a6)
    ENDM

  ENDC
