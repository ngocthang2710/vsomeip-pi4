#ifndef HELLO_WORLD_SERVICE_HPP
#define HELLO_WORLD_SERVICE_HPP

#include <vsomeip/vsomeip.hpp>
#include <memory>

class HelloWorldService {
public:
    HelloWorldService(std::shared_ptr<vsomeip::application> app);

    void start();      // Khởi động server
    void notify();     // Gửi notify đến các client đã subscribe

private:
    std::shared_ptr<vsomeip::application> app_;
};

#endif // HELLO_WORLD_SERVICE_HPP
