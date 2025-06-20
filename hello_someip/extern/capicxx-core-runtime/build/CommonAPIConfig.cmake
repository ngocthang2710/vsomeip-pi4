# Config file for the CommonAPI package
# Exports the follwing targets:
#   CommonAPI - CMake target for CommonAPI SomeIP
# Additionally, the following variables are defined:
#   COMMONAPI_VERSION - The CommonAPI version number

# Compute paths
get_filename_component(COMMONAPI_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

# Our library dependencies (contains definitions for IMPORTED targets)
include("${COMMONAPI_CMAKE_DIR}/CommonAPITargets.cmake")

# Legacy variable, kept for compatibility
get_target_property(COMMONAPI_INCLUDE_DIRS CommonAPI INTERFACE_INCLUDE_DIRECTORIES)

set(COMMONAPI_VERSION 3.2.4)
set(COMMONAPI_VERSION_STRING "3.2.4")
