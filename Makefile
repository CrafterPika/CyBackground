PACKAGE_VERSION = 1.0.2
ARCHS = armv7 armv7s arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CyBackground

CyBackground_FILES = Tweak.x
CyBackground_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += cybackgroundprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
