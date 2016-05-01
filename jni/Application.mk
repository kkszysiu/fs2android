# Uncomment this if you're using STL in your project
# See CPLUSPLUS-SUPPORT.html in the NDK documentation for more information
# APP_STL := stlport_static
APP_STL := c++_shared
APP_ABI := armeabi-v7a
APP_CPPFLAGS := -frtti -fexceptions -std=c++11
APP_LDFLAGS := -llog -landroid -lz
APP_PLATFORM := 10
NDK_TOOLCHAIN_VERSION := 4.9

# APP_STL := gnustl_static
# NDK_TOOLCHAIN_VERSION=4.9


APP_OPTIM := debug
