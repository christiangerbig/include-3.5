  IFND GADTOOLS_BADTOOLS_LIB_I
GADTOOLS_GADTOOLS_LIB_I EQU 1
* This file was modified for the Optimizing Macro Assembler:
* Includes lvo/asl.i and defines CALLGADTOOLS macro.

    IFND LVO_GADTOOLS_I
      INCLUDE "lvo/gadtools.i"
    ENDC

CALLGADTOOLS MACRO
    move.l  _GadToolsBase(pc),a6
    jsr     _LVO\1(a6)
    ENDM

CALLGADTOOLSQ MACRO
    move.l  _GadToolsBase(pc),a6
    jmp     _LVO\1(a6)
    ENDM

  ENDC
