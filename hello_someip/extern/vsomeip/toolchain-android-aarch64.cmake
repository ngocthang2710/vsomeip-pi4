set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(ANDROID_NDK /home/thangnn/Android/Sdk/ndk/27.0.12077973)
set(CMAKE_SYSROOT ${ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/sysroot)
set(CMAKE_C_COMPILER ${ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android29-clang)
set(CMAKE_CXX_COMPILER ${ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android29-clang++)

set(BOOST_ROOT "/home/thangnn/aosp/source/vendor/hello_someip/extern/boost-aarch64-install")
set(BOOST_INCLUDEDIR "${BOOST_ROOT}/include")
set(BOOST_LIBRARYDIR "${BOOST_ROOT}/lib")
