# Copyright (c) 2016-2017, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
        PACKAGE_NAME
        gst_libav
        VERSION
        1.16.3
        URL
        "https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.16.3.tar.xz"
        SHA1
        b599f2a61ece6fe244f482ffee5535923e1b78bc
)

hunter_cmake_args(
    gst_libav
    CMAKE_ARGS
#        EXTRA_FLAGS="--disable-x86asm"
    DEPENDS_ON_PACKAGES=gst_plugins_base;NASM
    DEPENDS_ON_PKGCONFIGS=gstreamer-plugins-base-1.0 # ???
)

hunter_configuration_types(gst_libav CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(gst_libav)

hunter_download(
    PACKAGE_NAME
    gst_libav
    PACKAGE_INTERNAL_DEPS_ID "2"
#    PACKAGE_UNRELOCATABLE_TEXT_FILES
#    "lib/gstreamer-1.0/libgstlibav.la"
)
