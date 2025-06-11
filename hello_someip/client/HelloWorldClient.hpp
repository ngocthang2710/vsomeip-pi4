#ifndef HELLO_WORLD_CLIENT_HPP
#define HELLO_WORLD_CLIENT_HPP

#include <vsomeip/vsomeip.hpp>
#include <memory>

class HelloWorldClient {
public:
    HelloWorldClient(std::shared_ptr<vsomeip::application> app);

    void start();           // Khởi động client, register handler
    void send_request();    // Gửi request đến server
    void subscribe_event(); // Subscribe và xử lý notify từ server

private:
    std::shared_ptr<vsomeip::application> app_;
};

#endif // HELLO_WORLD_CLIENT_HPP
