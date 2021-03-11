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
        VERSION 1.0.1
        URL "https://github.com/DEEP-IMPACT-AG/cnpy/archive/v1.0.1.tar.gz"
        SHA1 "a62133b85ffccb8333cf16dcac8a13c515eab3f9"
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(cnpy)
hunter_download(PACKAGE_NAME cnpy)