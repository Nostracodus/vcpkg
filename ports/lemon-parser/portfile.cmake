include(vcpkg_common_functions)

vcpkg_download_distfile(SOURCE_CODE
    URLS "https://www.sqlite.org/src/raw/68f547dabafdaedafe2e253651122de33340486c169ae67087ab0eb4fbc8a646?at=lemon.c"
    FILENAME "lemon.c"
    SHA512 974bf0bc02f65c02cedd46b9d9c4bbd30997b0efcba3bf257dc4636564782c330a77313a5d397753540d0fccc38578f3e35abf3ddd4f66ff92af7ddc1b297312
)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR})

file(COPY ${SOURCE_CODE} DESTINATION ${SOURCE_PATH})
file(COPY ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt DESTINATION ${SOURCE_PATH})

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)
vcpkg_install_cmake()

# Allow empty include directory
set(VCPKG_POLICY_EMPTY_INCLUDE_FOLDER enabled)

file(WRITE ${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright "LEMON is in the Public Domain.\nhttp://www.sqlite.org/copyright.html\n")
