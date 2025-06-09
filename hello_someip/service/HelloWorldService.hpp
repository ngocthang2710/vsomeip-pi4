#ifndef HELLO_WORLD_SERVICE_HPP
#define HELLO_WORLD_SERVICE_HPP

#include <vsomeip/vsomeip.hpp>

#include <memory>

class HelloWorldService {
public:
    HelloWorldService(std::shared_ptr<vsomeip::application> app);
    void start();

private:
    std::shared_ptr<vsomeip::application> app_;
};

#endif
