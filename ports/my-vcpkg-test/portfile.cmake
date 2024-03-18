# Define the download location and file name
set(DOWNLOAD_URL "https://github.com/okcancelmaybe/my-vcpkg-registry/releases/download/24.3.0/my-vcpkg-test-24.3.0.zip")
set(FILENAME "my-vcpkg-test-24.3.0.zip")

# Download the .zip file
vcpkg_download_distfile(ARCHIVE
    URLS "${DOWNLOAD_URL}"
    FILENAME "${FILENAME}"
    SHA512 FA416DF0760963E101B24C3D6729FE11CA99EB5DF8BB25D912B800ED13A0C264089ABECD610FCFF627C70FC226C80EBA22C954A2F3E1BBB4869B0F803C65DB07
)

# Extract the downloaded .zip file
vcpkg_extract_source_archive_ex(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE "${ARCHIVE}"
)
