#include "HelloWorldService.hpp"
#include <vsomeip/vsomeip.hpp>
#include <iostream>

int main() {
    std::cout << "[Service Main] Creating application..." << std::endl;
    auto app = vsomeip::runtime::get()->create_application("HelloService");

    std::cout << "[Service Main] Instantiating HelloWorldService..." << std::endl;
    HelloWorldService service(app);

    std::cout << "[Service Main] Starting service..." << std::endl;
    service.start();

    std::cout << "[Service Main] Service exited normally." << std::endl;
    return 0;
}
