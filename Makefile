ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
THEOS_BUILD_DIR = Packages

include theos/makefiles/common.mk

TWEAK_NAME = CCOldBounce
CCOldBounce_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
