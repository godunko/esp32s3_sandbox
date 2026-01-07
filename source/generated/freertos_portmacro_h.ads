pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with spinlock_h;
with System;
with Interfaces.C.Extensions;

package freertos_portmacro_h is

   --  unsupported macro: portCHAR int8_t
   --  unsupported macro: portFLOAT float
   --  unsupported macro: portDOUBLE double
   --  unsupported macro: portLONG int32_t
   --  unsupported macro: portSHORT int16_t
   --  unsupported macro: portSTACK_TYPE uint8_t
   --  unsupported macro: portBASE_TYPE int
   --  unsupported macro: portMAX_DELAY ( TickType_t ) 0xffffffffUL
   --  arg-macro: procedure portTASK_FUNCTION_PROTO (vFunction, pvParameters)
   --    void vFunction( void *pvParameters )
   --  arg-macro: procedure portTASK_FUNCTION (vFunction, pvParameters)
   --    void vFunction( void *pvParameters )
   portCRITICAL_NESTING_IN_TCB : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:114
   portSTACK_GROWTH : constant := ( -1 );  --  /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:115
   --  unsupported macro: portTICK_PERIOD_MS ( ( TickType_t ) 1000 / configTICK_RATE_HZ )

   portBYTE_ALIGNMENT : constant := 16;  --  /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:117
   portTICK_TYPE_IS_ATOMIC : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:118
   --  arg-macro: procedure portNOP ()
   --    XT_NOP()
   --  unsupported macro: portMUX_INITIALIZER_UNLOCKED SPINLOCK_INITIALIZER
   --  unsupported macro: portMUX_FREE_VAL SPINLOCK_FREE
   --  unsupported macro: portMUX_NO_TIMEOUT SPINLOCK_WAIT_FOREVER
   --  unsupported macro: portMUX_TRY_LOCK SPINLOCK_NO_WAIT
   --  arg-macro: procedure portMUX_INITIALIZE (mux)
   --    spinlock_initialize(mux)
   --  arg-macro: procedure portGET_CORE_ID ()
   --    xPortGetCoreID()
   --  arg-macro: procedure portDISABLE_INTERRUPTS ()
   --    do { XTOS_SET_INTLEVEL(XCHAL_EXCM_LEVEL); portbenchmarkINTERRUPT_DISABLE(); } while (0)
   --  arg-macro: procedure portENABLE_INTERRUPTS ()
   --    do { portbenchmarkINTERRUPT_RESTORE(0); XTOS_SET_INTLEVEL(0); } while (0)
   --  arg-macro: procedure portSET_INTERRUPT_MASK_FROM_ISR ()
   --    xPortSetInterruptMaskFromISR()
   --  arg-macro: procedure portCLEAR_INTERRUPT_MASK_FROM_ISR (prev_level)
   --    vPortClearInterruptMaskFromISR(prev_level)
   --  arg-macro: procedure portASSERT_IF_IN_ISR ()
   --    vPortAssertIfInISR()
   --  arg-macro: procedure portCHECK_IF_IN_ISR ()
   --    xPortInIsrContext()
   --  arg-macro: procedure portTRY_ENTER_CRITICAL (mux, timeout)
   --    xPortEnterCriticalTimeout(mux, timeout)
   --  arg-macro: procedure portENTER_CRITICAL (mux)
   --    vPortEnterCritical(mux)
   --  arg-macro: procedure portEXIT_CRITICAL (mux)
   --    vPortExitCritical(mux)
   --  arg-macro: procedure portTRY_ENTER_CRITICAL_ISR (mux, timeout)
   --    xPortEnterCriticalTimeout(mux, timeout)
   --  arg-macro: procedure portENTER_CRITICAL_ISR (mux)
   --    vPortEnterCritical(mux)
   --  arg-macro: procedure portEXIT_CRITICAL_ISR (mux)
   --    vPortExitCritical(mux)
   --  arg-macro: procedure portTRY_ENTER_CRITICAL_SAFE (mux, timeout)
   --    xPortEnterCriticalTimeoutSafe(mux, timeout)
   --  arg-macro: procedure portENTER_CRITICAL_SAFE (mux)
   --    vPortEnterCriticalSafe(mux)
   --  arg-macro: procedure portEXIT_CRITICAL_SAFE (mux)
   --    vPortExitCriticalSafe(mux)
   --  arg-macro: procedure portYIELD ()
   --    vPortYield()
   --  arg-macro: function portYIELD_FROM_ISR_NO_ARG ()
   --    return { traceISR_EXIT_TO_SCHEDULER(); _frxt_setup_switch(); };
   --  arg-macro: function portYIELD_FROM_ISR_ARG (xHigherPriorityTaskWoken)
   --    return { if (xHigherPriorityTaskWoken = pdTRUE) { traceISR_EXIT_TO_SCHEDULER(); _frxt_setup_switch(); } };
   --  unsupported macro: portYIELD_FROM_ISR(...) CHOOSE_MACRO_VA_ARG(portYIELD_FROM_ISR_ARG, portYIELD_FROM_ISR_NO_ARG, ##__VA_ARGS__)(__VA_ARGS__)
   --  arg-macro: procedure portYIELD_WITHIN_API ()
   --    esp_crosscore_int_send_yield(xPortGetCoreID())
   --  arg-macro: procedure portYIELD_CORE (xCoreID)
   --    vPortYieldOtherCore( xCoreID )
   --  arg-macro: procedure portSUPPRESS_TICKS_AND_SLEEP (idleTime)
   --    vApplicationSleep(idleTime)
   --  arg-macro: function portGET_RUN_TIME_COUNTER_VALUE ()
   --    return (configRUN_TIME_COUNTER_TYPE) xthal_get_ccount();
   --  arg-macro: procedure portCLEAN_UP_TCB (pxTCB)
   --    vPortTCBPreDeleteHook( pxTCB )
   --  arg-macro: procedure portVALID_LIST_MEM (ptr)
   --    xPortCheckValidListMem(ptr)
   --  arg-macro: procedure portVALID_TCB_MEM (ptr)
   --    xPortCheckValidTCBMem(ptr)
   --  arg-macro: procedure portVALID_STACK_MEM (ptr)
   --    xPortcheckValidStackMem(ptr)
   --  arg-macro: function os_task_switch_is_pended (_cpu_)
   --    return false;

   subtype StackType_t is sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:91

   subtype BaseType_t is int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:92

   subtype UBaseType_t is unsigned;  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:93

   subtype TickType_t is sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:99

   function xPortInIsrContext return BaseType_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "xPortInIsrContext";

   procedure vPortAssertIfInISR  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "vPortAssertIfInISR";

   function xPortInterruptedFromISRContext return BaseType_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "xPortInterruptedFromISRContext";

   subtype portMUX_TYPE is spinlock_h.spinlock_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:188

   function xPortEnterCriticalTimeout (mux : access portMUX_TYPE; timeout : BaseType_t) return BaseType_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "xPortEnterCriticalTimeout";

   procedure vPortExitCritical (mux : access portMUX_TYPE)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "vPortExitCritical";

   function xPortEnterCriticalTimeoutCompliance (mux : access portMUX_TYPE; timeout : BaseType_t) return BaseType_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "xPortEnterCriticalTimeoutCompliance";

   procedure vPortExitCriticalCompliance (mux : access portMUX_TYPE)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "vPortExitCriticalCompliance";

   procedure vPortYield  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "vPortYield";

   procedure vPortYieldOtherCore (coreid : BaseType_t)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "vPortYieldOtherCore";

   procedure vApplicationSleep (xExpectedIdleTime : TickType_t)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "vApplicationSleep";

   function xPortGetTickRateHz return sys_ustdint_h.uint32_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "xPortGetTickRateHz";

   procedure vPortSetStackWatchpoint (pxStackStart : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "vPortSetStackWatchpoint";

   procedure vPortTCBPreDeleteHook (pxTCB : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "vPortTCBPreDeleteHook";

   --  skipped func _frxt_setup_switch

   function xPortSetInterruptMaskFromISR return UBaseType_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:550
   with Import => True, 
        Convention => C, 
        External_Name => "xPortSetInterruptMaskFromISR";

   procedure vPortClearInterruptMaskFromISR (prev_level : UBaseType_t)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:557
   with Import => True, 
        Convention => C, 
        External_Name => "vPortClearInterruptMaskFromISR";

   procedure vPortEnterCritical (mux : access portMUX_TYPE)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:565
   with Import => True, 
        Convention => C, 
        External_Name => "vPortEnterCritical";

   procedure vPortEnterCriticalCompliance (mux : access portMUX_TYPE)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:570
   with Import => True, 
        Convention => C, 
        External_Name => "vPortEnterCriticalCompliance";

   function xPortEnterCriticalTimeoutSafe (mux : access portMUX_TYPE; timeout : BaseType_t) return BaseType_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "xPortEnterCriticalTimeoutSafe";

   procedure vPortEnterCriticalSafe (mux : access portMUX_TYPE)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:586
   with Import => True, 
        Convention => C, 
        External_Name => "vPortEnterCriticalSafe";

   procedure vPortExitCriticalSafe (mux : access portMUX_TYPE)  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:591
   with Import => True, 
        Convention => C, 
        External_Name => "vPortExitCriticalSafe";

   function xPortCanYield return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:602
   with Import => True, 
        Convention => C, 
        External_Name => "xPortCanYield";

   function xPortGetCoreID return BaseType_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:621
   with Import => True, 
        Convention => C, 
        External_Name => "xPortGetCoreID";

   function xPortCheckValidListMem (ptr : System.Address) return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:644
   with Import => True, 
        Convention => C, 
        External_Name => "xPortCheckValidListMem";

   function xPortCheckValidTCBMem (ptr : System.Address) return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:655
   with Import => True, 
        Convention => C, 
        External_Name => "xPortCheckValidTCBMem";

   function xPortcheckValidStackMem (ptr : System.Address) return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h:666
   with Import => True, 
        Convention => C, 
        External_Name => "xPortcheckValidStackMem";

end freertos_portmacro_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
