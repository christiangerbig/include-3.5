  IFND	EXEC_EXEC_LIB_I
EXEC_EXEC_LIB_I	EQU 1
*	Original include file (C) by Commodore-Amiga, Inc.
*	This file was modified for the Optimizing Macro Assembler:
*	    Includes lvo/exec.i and defines CALLEXEC macro.

    IFND LVO_EXEC_I
      INCLUDE "lvo/exec.i"
    ENDC

CALLEXEC MACRO
    move.l  _SysBase(pc),a6
    jsr	    _LVO\1(a6)
    ENDM

CALLEXECQ MACRO
    move.l  _SysBase(pc),a6
    jmp	    _LVO\1(a6)
    ENDM

  ENDC
