# top level project rules for the msm8974 project
#
LOCAL_DIR := $(GET_LOCAL_DIR)

TARGET := msm8974

MODULES += app/aboot

DEBUG := 1
EMMC_BOOT := 1

#DEFINES += WITH_DEBUG_DCC=1
DEFINES += WITH_DEBUG_UART=1
#DEFINES += WITH_DEBUG_FBCON=1
DEFINES += DEVICE_TREE=1
#DEFINES += MMC_BOOT_BAM=1
DEFINES += CRYPTO_BAM=1

#Disable thumb mode
ENABLE_THUMB := false

ifeq ($(EMMC_BOOT),1)
DEFINES += _EMMC_BOOT=1
endif
