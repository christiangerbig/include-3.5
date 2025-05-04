  IFND BATTCLOCK_BATTCLOCK_LIB_I
BATTCLOCK_BATTCLOCK_LIB_I EQU 1
* This file was modified for the Optimizing Macro Assembler:
* Includes lvo/battclcok.i and defines CALLBATTCLOCK macro.

    IFND LVO_BATTCLOCK_I
      INCLUDE "lvo/battclock.i"
    ENDC

CALLBATTCLOCK MACRO
    move.l  _BattClockBase(pc),a6
    jsr     _LVO\1(a6)
    ENDM

CALLBATTCLOCKQ MACRO
    move.l  _BattClockBase(pc),a6
    jmp     _LVO\1(a6)
    ENDM

  ENDC
