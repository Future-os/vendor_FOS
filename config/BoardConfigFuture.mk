# Charger
ifeq ($(WITH_FUTURE_CHARGER),true)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.future
endif

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/future/config/BoardConfigQcom.mk
endif