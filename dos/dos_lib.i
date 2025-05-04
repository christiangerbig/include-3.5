  IFND	DOS_DOS_LIB_I
DOS_DOS_LIB_I EQU 1
* This file was modified for the Optimizing Macro Assembler:
* Includes lvo/dos.i and defines CALLDOS macro.

reserve	EQU	4
vsize	EQU	6
count	SET	-vsize*(reserve+1)

LIBENT MACRO
_LVO\1	EQU count
count	SET count-vsize
    ENDM

    IFND LVO_DOS_I
      INCLUDE "lvo/dos.i"
    ENDC

CALLDOS	MACRO
    move.l  _DOSBase(pc),a6
    jsr	    _LVO\1(a6)
    ENDM

CALLDOSQ MACRO
    move.l  _DOSBase(pc),a6
    jmp	    _LVO\1(a6)
    ENDM

  ENDC
