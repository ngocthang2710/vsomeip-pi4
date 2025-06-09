# Install script for directory: /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-SomeIP.so.3.2.4" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-SomeIP.so.3.2.4")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-SomeIP.so.3.2.4"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/libCommonAPI-SomeIP.so.3.2.4")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-SomeIP.so.3.2.4" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-SomeIP.so.3.2.4")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-SomeIP.so.3.2.4"
         OLD_RPATH "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-core-runtime/build:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-SomeIP.so.3.2.4")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/libCommonAPI-SomeIP.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CommonAPI-3.2/CommonAPI/SomeIP" TYPE FILE FILES
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Address.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/AddressTranslator.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Attribute.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/ClientId.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/CommonAPISomeIP.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Configuration.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Connection.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Constants.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Defines.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Deployment.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/DispatchSource.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Event.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Factory.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Helper.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/InputStream.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/InstanceAvailabilityStatusChangedEvent.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/InterfaceHandler.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Message.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/OutputStream.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Proxy.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/ProxyAsyncCallbackHandler.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/ProxyAsyncEventCallbackHandler.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/ProxyBase.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/ProxyConnection.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/ProxyHelper.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/ProxyManager.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/SerializableArguments.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/StringEncoder.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/StubAdapter.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/StubAdapterHelper.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/StubManager.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/SubscriptionStatusWrapper.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Types.hpp"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/include/CommonAPI/SomeIP/Watch.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-SomeIP-3.2.4" TYPE FILE FILES
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/CommonAPI-SomeIPConfig.cmake"
    "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/CommonAPI-SomeIPConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-SomeIP-3.2.4/CommonAPI-SomeIPTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-SomeIP-3.2.4/CommonAPI-SomeIPTargets.cmake"
         "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/CMakeFiles/Export/f988e64f34513dcaebbd32842b83f209/CommonAPI-SomeIPTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-SomeIP-3.2.4/CommonAPI-SomeIPTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-SomeIP-3.2.4/CommonAPI-SomeIPTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-SomeIP-3.2.4" TYPE FILE FILES "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/CMakeFiles/Export/f988e64f34513dcaebbd32842b83f209/CommonAPI-SomeIPTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-SomeIP-3.2.4" TYPE FILE FILES "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/CMakeFiles/Export/f988e64f34513dcaebbd32842b83f209/CommonAPI-SomeIPTargets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/CommonAPI-SomeIP.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
