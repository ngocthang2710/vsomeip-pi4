#include "HelloWorldClient.hpp"
#include <vsomeip/vsomeip.hpp>
#include <thread>
#include <chrono>
#include <iostream>

int main() {
    std::cout << "[Main] Creating application..." << std::endl;
    auto app = vsomeip::runtime::get()->create_application("HelloClient");

    std::cout << "[Main] Instantiating HelloWorldClient..." << std::endl;
    HelloWorldClient client(app);

    std::cout << "[Main] Starting client thread..." << std::endl;
    std::thread run_thread([&]() {
        std::cout << "[Thread] client.start() begin" << std::endl;
        client.start();
        std::cout << "[Thread] client.start() end" << std::endl;
    });

    std::this_thread::sleep_for(std::chrono::seconds(2));
    std::cout << "[Main] Sending request from main thread..." << std::endl;
    client.send_request();

    run_thread.join();
    std::cout << "[Main] Client finished. Exiting." << std::endl;

    return 0;
}
