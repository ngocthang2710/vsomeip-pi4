#include "HelloWorldService.hpp"
#include <vsomeip/vsomeip.hpp>
#include <iostream>
#include <memory>
#include <thread>
#include <chrono>

int main() {
    std::cout << "[Service Main] Starting HelloWorld Service..." << std::endl;

    auto app = vsomeip::runtime::get()->create_application("hello_someip_service");
    if (!app) {
        std::cerr << "[Service Main] Failed to create vsomeip application!" << std::endl;
        return 1;
    }

    HelloWorldService service(app);

    // Thread gửi notify định kỳ
    std::thread notify_thread([&service]() {
        while (true) {
            std::this_thread::sleep_for(std::chrono::seconds(5));
            service.notify();
        }
    });

    std::cout << "[Service Main] Launching service logic..." << std::endl;
    service.start();

    // Không bao giờ đến đây, nhưng join nếu app_->start() bị dừng
    notify_thread.join();

    std::cout << "[Service Main] Service stopped gracefully." << std::endl;
    return 0;
}
