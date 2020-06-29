ARCHS = armv7 armv7s arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = cybackgroundprefs

cybackgroundprefs_FILES = CVGRootListController.m
cybackgroundprefs_INSTALL_PATH = /Library/PreferenceBundles
cybackgroundprefs_FRAMEWORKS = UIKit
cybackgroundprefs_PRIVATE_FRAMEWORKS = Preferences
cybackgroundprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cybackgroundprefs.plist$(ECHO_END)
