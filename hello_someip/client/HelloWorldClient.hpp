#ifndef HELLO_WORLD_CLIENT_HPP
#define HELLO_WORLD_CLIENT_HPP

#include <vsomeip/vsomeip.hpp>
#include <memory>

class HelloWorldClient {
public:
    HelloWorldClient(std::shared_ptr<vsomeip::application> app);
    void start();
    void send_request();

private:
    std::shared_ptr<vsomeip::application> app_;
};

#endif
