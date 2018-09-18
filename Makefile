CXX=g++
CXXFLAGS=-g -Wall -Wextra -pedantic-errors -Iinclude
OUT=bin/program
SOURCE=$(wildcard src/*.cpp)
OBJECTS=$(SOURCE:.cpp=.o)

$(OUT): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(OUT)

%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) $< -o $@

clean:
	rm -f $(OUT) $(OBJECTS)
