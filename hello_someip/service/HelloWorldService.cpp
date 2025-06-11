#include "HelloWorldService.hpp"
#include "HelloWorldIDs.hpp"

#include <iostream>

HelloWorldService::HelloWorldService(std::shared_ptr<vsomeip::application> app)
    : app_(app) {
    std::cout << "[Server] HelloWorldService constructor called." << std::endl;
}

void HelloWorldService::start() {
    std::cout << "[Server] Initializing application..." << std::endl;
    app_->init();

    std::cout << "[Server] Registering state handler..." << std::endl;

    app_->register_state_handler([this](vsomeip::state_type_e state) {
        if (state == vsomeip::state_type_e::ST_REGISTERED) {
            std::cout << "[Server] Application registered. Offering service..." << std::endl;
            app_->offer_service(SERVICE_ID, INSTANCE_ID);

            std::cout << "[Server] Offering event group..." << std::endl;
            app_->offer_event(SERVICE_ID,
                INSTANCE_ID,
                EVENT_ID,
                std::set<vsomeip::eventgroup_t>{EVENTGROUP_ID},
                vsomeip::event_type_e::ET_EVENT);

            // ✅ Gửi notify đầu tiên ngay sau khi offer_event
            std::string initial_data = "Initial notify from service.";
            auto initial_payload = vsomeip::runtime::get()->create_payload();
            initial_payload->set_data(reinterpret_cast<const uint8_t*>(initial_data.data()), initial_data.size());

            std::cout << "[Server] Sending initial notify..." << std::endl;
            app_->notify(SERVICE_ID, INSTANCE_ID, EVENT_ID, initial_payload);
        }
    });

    std::cout << "[Server] Registering request handler..." << std::endl;
    app_->register_message_handler(SERVICE_ID, INSTANCE_ID, METHOD_ID,
        [this](std::shared_ptr<vsomeip::message> request) {
            std::string request_data((char*)request->get_payload()->get_data(), request->get_payload()->get_length());
            std::cout << "[Server] Received request from client: " << request_data << std::endl;

            std::string response_data = "Server says hello back!";
            auto response = vsomeip::runtime::get()->create_response(request);

            auto payload = vsomeip::runtime::get()->create_payload();
            payload->set_data(reinterpret_cast<const uint8_t*>(response_data.data()), response_data.size());
            response->set_payload(payload);

            std::cout << "[Server] Sending response to client..." << std::endl;
            app_->send(response);
        });

    std::cout << "[Server] Starting application..." << std::endl;
    app_->start();
}

void HelloWorldService::notify() {
    std::string data = "This is a server notify event.";
    auto payload = vsomeip::runtime::get()->create_payload();
    payload->set_data(reinterpret_cast<const uint8_t*>(data.data()), data.size());

    std::cout << "[Server] Sending notify to all subscribers..." << std::endl;
    app_->notify(SERVICE_ID, INSTANCE_ID, EVENT_ID, payload);
}
