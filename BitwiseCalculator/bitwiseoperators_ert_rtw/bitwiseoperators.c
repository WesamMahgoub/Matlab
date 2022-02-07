/*
 * File: bitwiseoperators.c
 *
 * Code generated for Simulink model 'bitwiseoperators'.
 *
 * Model version                  : 1.12
 * Simulink Coder version         : 8.10 (R2016a) 10-Feb-2016
 * C/C++ source code generated on : Mon Feb 07 18:47:52 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "bitwiseoperators.h"
#include "bitwiseoperators_private.h"

/* External inputs (root inport signals with auto storage) */
ExtU_bitwiseoperators_T bitwiseoperators_U;

/* External outputs (root outports fed by signals with auto storage) */
ExtY_bitwiseoperators_T bitwiseoperators_Y;

/* Real-time model */
RT_MODEL_bitwiseoperators_T bitwiseoperators_M_;
RT_MODEL_bitwiseoperators_T *const bitwiseoperators_M = &bitwiseoperators_M_;

/* Model step function */
void bitwiseoperators_step(void)
{
  /* Outport: '<Root>/andout' incorporates:
   *  Inport: '<Root>/operand1'
   *  Inport: '<Root>/operand2'
   *  S-Function (sfix_bitop): '<Root>/andoperator'
   */
  bitwiseoperators_Y.andout = (uint8_T)(bitwiseoperators_U.operand1 &
    bitwiseoperators_U.operand2);

  /* Outport: '<Root>/orout' incorporates:
   *  Inport: '<Root>/operand1'
   *  Inport: '<Root>/operand2'
   *  S-Function (sfix_bitop): '<Root>/oroperator'
   */
  bitwiseoperators_Y.orout = (uint8_T)(bitwiseoperators_U.operand1 |
    bitwiseoperators_U.operand2);

  /* Outport: '<Root>/xorout' incorporates:
   *  Inport: '<Root>/operand1'
   *  Inport: '<Root>/operand2'
   *  S-Function (sfix_bitop): '<Root>/xoroperator'
   */
  bitwiseoperators_Y.xorout = (uint8_T)(bitwiseoperators_U.operand1 ^
    bitwiseoperators_U.operand2);

  /* Outport: '<Root>/xnorout' incorporates:
   *  Inport: '<Root>/operand1'
   *  Inport: '<Root>/operand2'
   *  S-Function (sfix_bitop): '<Root>/notoperator'
   *  S-Function (sfix_bitop): '<Root>/xorinxnoroperator'
   */
  bitwiseoperators_Y.xnorout = (uint8_T)~(uint8_T)(bitwiseoperators_U.operand1 ^
    bitwiseoperators_U.operand2);

  /* Outport: '<Root>/not1' incorporates:
   *  Inport: '<Root>/operand1'
   *  S-Function (sfix_bitop): '<Root>/notoperand1'
   */
  bitwiseoperators_Y.not1 = (uint8_T)~bitwiseoperators_U.operand1;

  /* Outport: '<Root>/not2' incorporates:
   *  Inport: '<Root>/operand2'
   *  S-Function (sfix_bitop): '<Root>/notoperand2'
   */
  bitwiseoperators_Y.not2 = (uint8_T)~bitwiseoperators_U.operand2;
}

/* Model initialize function */
void bitwiseoperators_initialize(void)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatus(bitwiseoperators_M, (NULL));

  /* external inputs */
  (void) memset((void *)&bitwiseoperators_U, 0,
                sizeof(ExtU_bitwiseoperators_T));

  /* external outputs */
  (void) memset((void *)&bitwiseoperators_Y, 0,
                sizeof(ExtY_bitwiseoperators_T));
}

/* Model terminate function */
void bitwiseoperators_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
