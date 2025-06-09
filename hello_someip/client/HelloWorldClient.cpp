#include "HelloWorldClient.hpp"
#include <iostream>

constexpr vsomeip::service_t SERVICE_ID = 12345;
constexpr vsomeip::instance_t INSTANCE_ID = 1;
constexpr vsomeip::method_t METHOD_ID = 1;

HelloWorldClient::HelloWorldClient(std::shared_ptr<vsomeip::application> app) : app_(app) {
    std::cout << "[Client] HelloWorldClient constructor called." << std::endl;
}

void HelloWorldClient::start() {
    std::cout << "[Client] Initializing application..." << std::endl;
    app_->init();

    std::cout << "[Client] Registering state handler..." << std::endl;
    app_->register_state_handler([this](vsomeip::state_type_e state) {
        std::cout << "[Client] State changed: " << (state == vsomeip::state_type_e::ST_REGISTERED ? "REGISTERED" : "NOT_REGISTERED") << std::endl;
        if (state == vsomeip::state_type_e::ST_REGISTERED) {
            std::cout << "[Client] Requesting service..." << std::endl;
            app_->request_service(SERVICE_ID, INSTANCE_ID);
        }
    });

    std::cout << "[Client] Registering message handler..." << std::endl;
    app_->register_message_handler(SERVICE_ID, INSTANCE_ID, METHOD_ID,
        [this](std::shared_ptr<vsomeip::message> response) {
            std::string data((char*)response->get_payload()->get_data(), response->get_payload()->get_length());
            std::cout << "[Client] Received response: " << data << std::endl;
        });

    std::cout << "[Client] Starting application..." << std::endl;
    app_->start();
}

void HelloWorldClient::send_request() {
    std::cout << "[Client] Preparing request..." << std::endl;

    auto request = vsomeip::runtime::get()->create_request();
    request->set_service(SERVICE_ID);
    request->set_instance(INSTANCE_ID);
    request->set_method(METHOD_ID);

    std::string msg = "Hello from client!";
    std::cout << "[Client] Request data: " << msg << std::endl;

    auto payload = vsomeip::runtime::get()->create_payload();
    payload->set_data(reinterpret_cast<const uint8_t*>(msg.data()), msg.size());
    request->set_payload(payload);

    std::cout << "[Client] Sending request..." << std::endl;
    app_->send(request);
}
