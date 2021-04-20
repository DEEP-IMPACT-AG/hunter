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
        gst_plugins_ugly
        VERSION
        1.16.3
        URL
        "https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.16.3.tar.xz"
        SHA1
        cd090bbbf0bc80021383ee7d9e51ba4e4162496c
)

hunter_add_version(
    PACKAGE_NAME
    gst_plugins_ugly
    VERSION
    1.10.4
    URL
    "https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.10.4.tar.xz"
    SHA1
    a01ab3ac71bdd0d52e4a120349a8f26fde48f317
)

set(
        _gstreamer_components
        plugins-ugly
)

set(_gst_export_targets "")
foreach(_x ${_gstreamer_components})
    list(APPEND _gst_export_targets gstreamer-${_x}-1.0)
endforeach()

hunter_cmake_args(
    gst_plugins_ugly
    CMAKE_ARGS
    DEPENDS_ON_PACKAGES=gst_plugins_base
    DEPENDS_ON_PKGCONFIGS=gstreamer-plugins-base-1.0 # ???
    PKGCONFIG_EXPORT_TARGETS=${_gst_export_targets}
)

hunter_configuration_types(gst_plugins_ugly CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(gst_plugins_ugly)

hunter_download(
    PACKAGE_NAME
    gst_plugins_ugly
    PACKAGE_INTERNAL_DEPS_ID "2"
    PACKAGE_UNRELOCATABLE_TEXT_FILES
    "lib/gstreamer-1.0/libgstasf.la"
    "lib/gstreamer-1.0/libgstdvdlpcmdec.la"
    "lib/gstreamer-1.0/libgstdvdsub.la"
    "lib/gstreamer-1.0/libgstrmdemux.la"
    "lib/gstreamer-1.0/libgstxingmux.la"
)
