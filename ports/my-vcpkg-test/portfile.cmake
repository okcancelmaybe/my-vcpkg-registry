vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO "okcancelmaybe/my-vcpkg-registry"  # Adjust with the actual GitHub path
    REF "24.3.0"
    SHA512 e6eb7ba2e31d91f1b5c8f258579872e764d08e4b873c43d7a4f92bbe085ddb0cf71d906c13eaf96997c70b133f06e0b3adebad6ecb68b30babe8ea5db2bb5196
)

vcpkg_extract_source_archive_ex(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE ${SOURCE_PATH}/my-vcpkg-test-24.3.0.zip
)

file(INSTALL ${SOURCE_PATH}/include/ DESTINATION ${CURRENT_PACKAGES_DIR}/include)
file(INSTALL ${SOURCE_PATH}/lib/ DESTINATION ${CURRENT_PACKAGES_DIR}/lib)
