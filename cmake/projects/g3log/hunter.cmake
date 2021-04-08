# Copyright (c) 2021, Tamas Nagy (Deep Impact AG)
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
        PACKAGE_NAME g3log
        VERSION 1.3.4
        URL "https://github.com/KjellKod/g3log/archive/refs/tags/1.3.4.tar.gz"
        SHA1 "8672863420fa2baab48b2904b9ed3dec4c0fd7a8"
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(g3log)
hunter_download(PACKAGE_NAME g3log)