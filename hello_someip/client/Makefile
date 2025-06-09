CXX = g++
CXXFLAGS = -std=c++17 -I/usr/local/include -Wall
LDFLAGS = -L/usr/local/lib -lvsomeip3 -lpthread

TARGET = client_someip
SRCS = HelloWorldClient.cpp main_client.cpp

all:
	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)
