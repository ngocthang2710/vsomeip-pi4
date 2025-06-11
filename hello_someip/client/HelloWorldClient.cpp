#include "HelloWorldClient.hpp"
#include "HelloWorldIDs.hpp"

#include <iostream>
#include <cstring>
#include <thread>
#include <chrono>

HelloWorldClient::HelloWorldClient(std::shared_ptr<vsomeip::application> app)
    : app_(std::move(app)) {
}

void HelloWorldClient::start() {
    std::cout << "[Client] Initializing application..." << std::endl;
    app_->init();

    app_->register_state_handler([this](vsomeip::state_type_e state) {
        if (state == vsomeip::state_type_e::ST_REGISTERED) {
            std::cout << "[Client] App registered. Requesting service..." << std::endl;
            app_->request_service(SERVICE_ID, INSTANCE_ID);
        }
    });

    app_->register_availability_handler(SERVICE_ID, INSTANCE_ID,
        [this](vsomeip::service_t, vsomeip::instance_t, bool is_available) {
            if (is_available) {
                std::cout << "[Client] Service is available. Subscribing..." << std::endl;

                // Đăng ký nhận sự kiện trước để không bị miss notify
                subscribe_event();

                // Đợi để đảm bảo routing và eventgroup ready
                std::this_thread::sleep_for(std::chrono::milliseconds(500));

                // Gửi request sau khi subscribe xong
                send_request();
            } else {
                std::cout << "[Client] Service became unavailable." << std::endl;
            }
        });

    // Handler nhận response từ method
    app_->register_message_handler(SERVICE_ID, INSTANCE_ID, METHOD_ID,
        [this](std::shared_ptr<vsomeip::message> response) {
            std::string response_data(reinterpret_cast<const char*>(response->get_payload()->get_data()),
                                      response->get_payload()->get_length());
            std::cout << "[Client] Received response: " << response_data << std::endl;
        });

    // Handler nhận event notification
    app_->register_message_handler(SERVICE_ID, INSTANCE_ID, EVENT_ID,
        [this](std::shared_ptr<vsomeip::message> msg) {
            std::string notify_data(reinterpret_cast<const char*>(msg->get_payload()->get_data()),
                                    msg->get_payload()->get_length());
            std::cout << "[Client] Received event notification: " << notify_data << std::endl;
        });

    std::cout << "[Client] Starting application..." << std::endl;
    app_->start();
}

void HelloWorldClient::send_request() {
    auto request = vsomeip::runtime::get()->create_request();
    request->set_service(SERVICE_ID);
    request->set_instance(INSTANCE_ID);
    request->set_method(METHOD_ID);

    std::string request_data = "Hello from client!";
    auto payload = vsomeip::runtime::get()->create_payload();
    payload->set_data(reinterpret_cast<const uint8_t*>(request_data.data()), request_data.size());
    request->set_payload(payload);

    std::cout << "[Client] Sending request..." << std::endl;
    app_->send(request);
}

void HelloWorldClient::subscribe_event() {
    std::cout << "[Client] Subscribing to event..." << std::endl;

    std::set<vsomeip::eventgroup_t> event_groups;
    event_groups.insert(EVENTGROUP_ID);

    app_->request_event(SERVICE_ID, INSTANCE_ID, EVENT_ID, event_groups, 
                        vsomeip::event_type_e::ET_FIELD, 
                        vsomeip::reliability_type_e::RT_RELIABLE);
    std::cout << "[Client] request_event() called for EVENT_ID = 0x"
              << std::hex << EVENT_ID << std::endl;

    app_->subscribe(SERVICE_ID, INSTANCE_ID, EVENTGROUP_ID);
    std::cout << "[Client] subscribe() called for EVENTGROUP_ID = 0x"
              << std::hex << EVENTGROUP_ID << std::endl;
}

