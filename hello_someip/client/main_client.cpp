#include "HelloWorldClient.hpp"
#include <vsomeip/vsomeip.hpp>
#include <thread>
#include <chrono>
#include <iostream>

int main() {
    std::cout << "[Main] Creating VSOMEIP application..." << std::endl;
    auto app = vsomeip::runtime::get()->create_application("hello_someip_client");

    std::cout << "[Main] Creating HelloWorldClient instance..." << std::endl;
    HelloWorldClient client(app);

    // Start VSOMEIP in a separate thread (non-blocking)
    std::cout << "[Main] Starting client VSOMEIP main loop in background thread..." << std::endl;
    std::thread client_thread([&client]() {
        client.start();
    });

    // Wait some time to ensure the app is registered and ready
    std::this_thread::sleep_for(std::chrono::seconds(2));

    std::cout << "[Main] Sending initial request from main thread..." << std::endl;
    client.send_request();

    // Optionally subscribe to event manually (in case you want to control it here)
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << "[Main] Manually subscribing to event from main thread..." << std::endl;
    client.subscribe_event();

    // Let main thread sleep while background thread runs indefinitely
    std::cout << "[Main] Main thread sleeping indefinitely. Press Ctrl+C to exit." << std::endl;
    client_thread.join(); // Or use `detach()` if you want non-blocking main

    return 0;
}
