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
# I could not find any original version of this package. What I found is already archived, and dos not contain the configure
hunter_add_version(
        PACKAGE_NAME
        videoproto
        VERSION
        "2020.1-deb"
        URL
        "https://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2020.1.orig.tar.gz"
        SHA1
        b383dac4e74f704d9616eabe2d281f223c825d1b
)

hunter_configuration_types(videoproto CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)

hunter_cmake_args(
    videoproto
    CMAKE_ARGS         # do not use double quotes on CMAKE_ARGS
      DEPENDS_ON_PACKAGES=x11
      PKGCONFIG_EXPORT_TARGETS=videoproto
)
hunter_cacheable(videoproto)
hunter_download(
    PACKAGE_NAME videoproto
    PACKAGE_INTERNAL_DEPS_ID 1
    PACKAGE_UNRELOCATABLE_TEXT_FILES
    "share/pkgconfig/videoproto.pc"
)
