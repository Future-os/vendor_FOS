# Versioning System
FUTURE_BASE_VERSION = v1.0

ifndef FUTURE_BUILD_TYPE
    FUTURE_BUILD_TYPE := Unofficial
endif

# Only include Future OTA for official builds
ifeq ($(filter-out Official,$(FUTURE_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
       # Updates
endif

TARGET_PRODUCT_SHORT := $(subst future_,,$(FUTURE_BUILD_TYPE))

# Set all versions
PLATFORM_VERSION = 9.0
DATE := $(shell date -u +%Y%m%d)
FUTURE_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
FUTURE_BASE_SET_VERSION = 1.0
FUTURE_BUILD_VERSION := Future-OS_$(FUTURE_BASE_VERSION)-$(DATE)-$(FUTURE_BUILD_TYPE)
FUTURE_DATE := $(shell date -u +%d-%m-%Y)
FUTURE_MOD_VERSION := Future-OS-$(FUTURE_BASE_VERSION)-$(FUTURE_BUILD_DATE)-$(FUTURE_BUILD_TYPE)
FUTURE_VERSION := Future-OS-$(FUTURE_BASE_VERSION)-$(DATE)-$(FUTURE_BUILD)-$(FUTURE_BUILD_TYPE)
ROM_FINGERPRINT := Future-OS/$(FUTURE_BASE_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(FUTURE_BUILD_DATE)

PRODUCT_PROPERTIES_OVERRIDES := \
    ro.future.base.version=$(FUTURE_BASE_SET_VERSION) \
	ro.future.build.date=$(FUTURE_BUILD_DATE) \
	ro.future.build.version=$(FUTURE_BUILD_VERSION) \
	ro.future.fingerprint=$(ROM_FINGERPRINT)
	ro.future.releasetype=$(FUTURE_BUILD_TYPE) \
	ro.future.version=$(FUTURE_VERSION) \
	ro.future.build.type=$(FUTURE_BUILD_TYPE) \
	ro.future.maintainer=$(FUTURE_MOD_VERSION)
	