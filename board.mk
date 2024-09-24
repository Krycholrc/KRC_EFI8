# List of all the board related files.
BOARDCPPSRC =  $(BOARD_DIR)/board_configuration.cpp

# defines SHORT_BOARD_NAME
include $(BOARD_DIR)/meta-info.env

# Override DEFAULT_ENGINE_TYPE
DDEFS += -DSTM32F407xx
DDEFS += -DFIRMWARE_ID=\"KRC_ECU8\"
DDEFS += -DHAL_TRIGGER_USE_PAL=TRUE

# TS_SECONDARY_UxART_PORT
# DDEFS += -DSTM32_SERIAL_USE_USART1=TRUE 
# DDEFS += -DTS_SECONDARY_UxART_PORT=SD1 -DEFI_TS_SECONDARY_IS_SERIAL=TRUE
# DDEFS += -DEFI_AUX_SERIAL=FALSE

# Main Relay control
DDEFS += -DEFI_MAIN_RELAY_CONTROL=TRUE

# Knock
DDEFS += -DSTM32_ADC_USE_ADC3=TRUE
DDEFS += -DEFI_SOFTWARE_KNOCK=TRUE

# EGT
DDEFS += -DEFI_MAX_31855=TRUE

# reduce memory usage monitoring
DDEFS += -DRAM_UNUSED_SIZE=200

# Critical LED (Err)
DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::E8
