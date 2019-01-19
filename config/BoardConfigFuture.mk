# Charger
ifeq ($(WITH_FUTURE_CHARGER),true)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.future
endif

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/future/config/BoardConfigQcom.mk
endif

# Future-OS Branding
include vendor/future/config/branding.mk

# Bootanimation
include vendor/future/config/bootanimation.mk

# Future-OS BoardConfigKernel
include vendor/future/config/BoardConfigKernel.mk

# Future-OS BoardConfigSoong
include vendor/future/config/BoardConfigSoong.mk

include vendor/future/config/telephony.mk