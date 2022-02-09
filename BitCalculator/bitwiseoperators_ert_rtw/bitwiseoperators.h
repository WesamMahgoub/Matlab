/*
 * File: bitwiseoperators.h
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

#ifndef RTW_HEADER_bitwiseoperators_h_
#define RTW_HEADER_bitwiseoperators_h_
#include <stddef.h>
#include <string.h>
#ifndef bitwiseoperators_COMMON_INCLUDES_
# define bitwiseoperators_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* bitwiseoperators_COMMON_INCLUDES_ */

#include "bitwiseoperators_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

/* External inputs (root inport signals with auto storage) */
typedef struct {
  uint8_T operand1;                    /* '<Root>/operand1' */
  uint8_T operand2;                    /* '<Root>/operand2' */
} ExtU_bitwiseoperators_T;

/* External outputs (root outports fed by signals with auto storage) */
typedef struct {
  uint8_T andout;                      /* '<Root>/andout' */
  uint8_T orout;                       /* '<Root>/orout' */
  uint8_T xorout;                      /* '<Root>/xorout' */
  uint8_T xnorout;                     /* '<Root>/xnorout' */
  uint8_T not1;                        /* '<Root>/not1' */
  uint8_T not2;                        /* '<Root>/not2' */
} ExtY_bitwiseoperators_T;

/* Real-time Model Data Structure */
struct tag_RTM_bitwiseoperators_T {
  const char_T * volatile errorStatus;
};

/* External inputs (root inport signals with auto storage) */
extern ExtU_bitwiseoperators_T bitwiseoperators_U;

/* External outputs (root outports fed by signals with auto storage) */
extern ExtY_bitwiseoperators_T bitwiseoperators_Y;

/* Model entry point functions */
extern void bitwiseoperators_initialize(void);
extern void bitwiseoperators_step(void);
extern void bitwiseoperators_terminate(void);

/* Real-time Model object */
extern RT_MODEL_bitwiseoperators_T *const bitwiseoperators_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'bitwiseoperators'
 */
#endif                                 /* RTW_HEADER_bitwiseoperators_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
