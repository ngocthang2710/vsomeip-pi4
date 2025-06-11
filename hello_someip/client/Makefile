CXX = g++
CXXFLAGS = -std=c++17 -I../include -I/usr/local/include -Wall
LDFLAGS = -L/usr/local/lib -lvsomeip3 -lpthread

TARGET = hello_someip_client
SRCS = HelloWorldClient.cpp main_client.cpp

all:
	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)
