/*
 * File: arthimeticoperators.c
 *
 * Code generated for Simulink model 'arthimeticoperators'.
 *
 * Model version                  : 1.5
 * Simulink Coder version         : 8.10 (R2016a) 10-Feb-2016
 * C/C++ source code generated on : Mon Feb 07 18:47:37 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "arthimeticoperators.h"
#include "arthimeticoperators_private.h"

/* External inputs (root inport signals with auto storage) */
ExtU_arthimeticoperators_T arthimeticoperators_U;

/* External outputs (root outports fed by signals with auto storage) */
ExtY_arthimeticoperators_T arthimeticoperators_Y;

/* Real-time model */
RT_MODEL_arthimeticoperators_T arthimeticoperators_M_;
RT_MODEL_arthimeticoperators_T *const arthimeticoperators_M =
  &arthimeticoperators_M_;

/* Model step function */
void arthimeticoperators_step(void)
{
  /* Outport: '<Root>/Out1' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Sum: '<Root>/Add'
   */
  arthimeticoperators_Y.Out1 = (uint8_T)((uint32_T)arthimeticoperators_U.In1 +
    arthimeticoperators_U.In2);

  /* Outport: '<Root>/Out2' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Sum: '<Root>/Subtract'
   */
  arthimeticoperators_Y.Out2 = (uint8_T)(arthimeticoperators_U.In1 -
    arthimeticoperators_U.In2);

  /* Outport: '<Root>/Out3' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Product: '<Root>/Product'
   */
  arthimeticoperators_Y.Out3 = (uint16_T)((uint32_T)arthimeticoperators_U.In1 *
    arthimeticoperators_U.In2);

  /* Outport: '<Root>/Out4' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Product: '<Root>/Divide'
   */
  arthimeticoperators_Y.Out4 = (uint8_T)(arthimeticoperators_U.In2 == 0U ?
    MAX_uint32_T : (uint32_T)arthimeticoperators_U.In1 /
    arthimeticoperators_U.In2);
}

/* Model initialize function */
void arthimeticoperators_initialize(void)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatus(arthimeticoperators_M, (NULL));

  /* external inputs */
  (void) memset((void *)&arthimeticoperators_U, 0,
                sizeof(ExtU_arthimeticoperators_T));

  /* external outputs */
  (void) memset((void *)&arthimeticoperators_Y, 0,
                sizeof(ExtY_arthimeticoperators_T));
}

/* Model terminate function */
void arthimeticoperators_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
