#include "HelloWorldService.hpp"

#include <iostream>
#include <vsomeip/vsomeip.hpp> 

constexpr vsomeip::service_t SERVICE_ID = 12345;
constexpr vsomeip::instance_t INSTANCE_ID = 1;
constexpr vsomeip::method_t METHOD_ID = 1;

HelloWorldService::HelloWorldService(std::shared_ptr<vsomeip::application> app)
    : app_(app) {}

void HelloWorldService::start() {
    std::cout << "[Service] Initializing application..." << std::endl;
    if (!app_->init()) {
        std::cerr << "[Service] Failed to initialize vsomeip application!" << std::endl;
        return;
    }

    std::cout << "[Service] Registering message handler..." << std::endl;
    app_->register_message_handler(SERVICE_ID, INSTANCE_ID, METHOD_ID,
        [this](std::shared_ptr<vsomeip::message> request) {
            std::cout << "[Service] Received request!" << std::endl;

            if (!request) {
                std::cerr << "[Service] Request is null!" << std::endl;
                return;
            }

            auto payload = request->get_payload();
            if (!payload) {
                std::cerr << "[Service] Payload is null!" << std::endl;
                return;
            }

            std::string received(reinterpret_cast<const char*>(payload->get_data()), payload->get_length());
            std::cout << "[Service] Payload Received: \"" << received << "\"" << std::endl;

            std::shared_ptr<vsomeip::message> response = vsomeip::runtime::get()->create_response(request);
            if (!response) {
                std::cerr << "[Service] Failed to create response message!" << std::endl;
                return;
            }

            std::string reply = "Hello from service!";
            auto resp_payload = vsomeip::runtime::get()->create_payload();
            resp_payload->set_data(reinterpret_cast<const vsomeip::byte_t*>(reply.data()), reply.size());

            std::cout << "[Service] Sending response: \"" << reply << "\"" << std::endl;
            response->set_payload(resp_payload);

            app_->send(response);
            std::cout << "[Service] Response sent." << std::endl;
        });

    std::cout << "[Service] Offering service [" << SERVICE_ID << ":" << INSTANCE_ID << "]..." << std::endl;
    app_->offer_service(SERVICE_ID, INSTANCE_ID);

    std::cout << "[Service] Starting application loop..." << std::endl;
    app_->start();
}
