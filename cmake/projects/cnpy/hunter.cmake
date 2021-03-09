# Copyright (c) 2021, Tamas Nagy (Deep Impact AG)
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
        PACKAGE_NAME cnpy
        VERSION 1.0.0
        URL "https://github.com/DEEP-IMPACT-AG/cnpy/archive/1.0.0.tar.gz"
        SHA1 "a030af676b769a34ace658073f6845fe0e8e9613"
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(cnpy)
hunter_download(PACKAGE_NAME cnpy)