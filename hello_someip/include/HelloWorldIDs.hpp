#ifndef HELLO_WORLD_IDS_HPP
#define HELLO_WORLD_IDS_HPP

#include <vsomeip/vsomeip.hpp>

// Service & instance
constexpr vsomeip::service_t SERVICE_ID       = 0x3039;  // 12345
constexpr vsomeip::instance_t INSTANCE_ID     = 0x0001;  // 1

// Method (RPC)
constexpr vsomeip::method_t METHOD_ID         = 0x0001;  // 1

// Event & Event Group
constexpr vsomeip::event_t EVENT_ID           = 0x03E9;  // 1001
constexpr vsomeip::eventgroup_t EVENTGROUP_ID = 0x0001; // 1

#endif // HELLO_WORLD_IDS_HPP
