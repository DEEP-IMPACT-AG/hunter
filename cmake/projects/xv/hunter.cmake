# Copyright (c) 2016 Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

#Debian version, it already contains the configure script
hunter_add_version(
        PACKAGE_NAME
        xv
        VERSION
        "1.0.11-deb"
        URL
        "https://deb.debian.org/debian/pool/main/libx/libxv/libxv_1.0.11.orig.tar.gz"
        SHA1
        214636da26bb832c8e2862920a2aded78ed6e6c8
)

# This original package does not have the configure script (auto)generated or other autotools invoked
# Therefore if possible use the debian version above
hunter_add_version(
    PACKAGE_NAME
    xv
    VERSION
    "1.0.11"
    URL
    "https://gitlab.freedesktop.org/xorg/lib/libxv/-/archive/libXv-1.0.11/libxv-libXv-1.0.11.tar.gz"
    SHA1
    b04df6234f9680acc636e075d6926197170bbd9d
)

hunter_configuration_types(xv CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)

hunter_cmake_args(
    xv
    CMAKE_ARGS         # do not use double quotes on CMAKE_ARGS
      DEPENDS_ON_PACKAGES=x11;xext;videoproto
      PKGCONFIG_EXPORT_TARGETS=xv
)
hunter_cacheable(xv)
hunter_download(
    PACKAGE_NAME xv
    PACKAGE_INTERNAL_DEPS_ID 1
    PACKAGE_UNRELOCATABLE_TEXT_FILES
    "lib/pkgconfig/xv.pc"
)
