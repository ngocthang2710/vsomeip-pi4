# Config file for the CommonAPI-SomeIP package
# Exports the follwing targets:
#   CommonAPI-SomeIP - CMake target for CommonAPI SomeIP
# Additionally, the following variables are defined:
#   COMMONAPI_SOMEIP_VERSION - The CommonAPI-SomeIP version number

# Find dependencies
find_package(CommonAPI REQUIRED)
find_package(vsomeip3 REQUIRED)

# Compute paths
get_filename_component (COMMONAPI_SOMEIP_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

include ("${COMMONAPI_SOMEIP_CMAKE_DIR}/CommonAPI-SomeIPTargets.cmake")

# Legacy variable, kept for compatibility
get_target_property(COMMONAPI_SOMEIP_INCLUDE_DIRS CommonAPI-SomeIP INTERFACE_INCLUDE_DIRECTORIES)

set(COMMONAPI_SOMEIP_VERSION 3.2.4)
set(COMMONAPI_SOMEIP_VERSION_STRING "3.2.4")
