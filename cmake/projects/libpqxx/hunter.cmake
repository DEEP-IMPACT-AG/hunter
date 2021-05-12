# Copyright (c) 2021, Tamas Nagy (Deep Impact AG)
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
        PACKAGE_NAME libpqxx
        VERSION 7.5.0
        URL "https://github.com/jtv/libpqxx/archive/refs/tags/7.5.0.tar.gz"
        SHA1 "7f552195b9659d243381d8d7e3ad037952cab4bd"
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libpqxx)
hunter_download(PACKAGE_NAME libpqxx)