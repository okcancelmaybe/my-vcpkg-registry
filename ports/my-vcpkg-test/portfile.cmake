# Define the download location and file name
set(DOWNLOAD_URL "https://github.com/okcancelmaybe/my-vcpkg-registry/releases/download/24.3.0/my-vcpkg-test-24.3.0.zip")
set(FILENAME "my-vcpkg-test-24.3.0.zip")

# Download the .zip file
vcpkg_download_distfile(ARCHIVE
    URLS "${DOWNLOAD_URL}"
    FILENAME "${FILENAME}"
    SHA512 e6eb7ba2e31d91f1b5c8f258579872e764d08e4b873c43d7a4f92bbe085ddb0cf71d906c13eaf96997c70b133f06e0b3adebad6ecb68b30babe8ea5db2bb5196
)

# Extract the downloaded .zip file
vcpkg_extract_source_archive_ex(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE "${ARCHIVE}"
)



# Define the download location and file name
set(DOWNLOAD_URL "https://github.com/okcancelmaybe/my-vcpkg-registry/releases/download/24.3.0/my-vcpkg-test-24.3.0.zip")
set(FILENAME "my-vcpkg-test-24.3.0.zip")

# Download the .zip file
vcpkg_download_distfile(ARCHIVE
    URLS "${DOWNLOAD_URL}"
    FILENAME "${FILENAME}"
    SHA512 e6eb7ba2e31d91f1b5c8f258579872e764d08e4b873c43d7a4f92bbe085ddb0cf71d906c13eaf96997c70b133f06e0b3adebad6ecb68b30babe8ea5db2bb5196
)

# Extract the downloaded .zip file
vcpkg_extract_source_archive_ex(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE "${ARCHIVE}"
)

# Place the header file within the /include folder
file(INSTALL
    ${SOURCE_PATH}/my-vcpkg-test.h
    DESTINATION ${CURRENT_PACKAGES_DIR}/include/my-vcpkg-test
)
