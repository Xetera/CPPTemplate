CXX=g++
CXXFLAGS=-g -Wall -Wextra -pedantic-errors -Iinclude
OUT=bin/program
SOURCE=$(wildcard src/*.cpp)

all:
	@echo "Compiling with the following command:"
	$(CXX) $(SOURCE) -o $(OUT) $(CXXFLAGS)

clean:
	find . -name "*.scr" -type f -delete
	find . -name "*.tar.gz" -type f -delete
	rm bin/* 

