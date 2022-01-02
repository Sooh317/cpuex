main:
	g++ -std=c++17 -I ./fmt/include -Wall -Wextra -O2 -o sim main.cpp

install:
	git clone https://github.com/fmtlib/fmt.git

all:
	./sim -A >| run/res.txt

binary_to_assembly:
	./sim -ta -b >| run/asm

assembly_to_binary:
	./sim -tb -a >| run/bin

clean:
	rm -f sim 