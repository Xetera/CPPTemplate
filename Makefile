CXXFLAGS=-g -Wall -pedantic-errors -Iinclude
OUT=bin/program
SOURCE=$(wildcard src/*.cpp)

all:
	@echo -e "\e[38mCompiling...\e[0m"
	g++ $(SOURCE) -o $(OUT) $(CXXFLAGS)

clean:
	rm bin/*