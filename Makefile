main:
	g++ -I ./fmt/include -Wall -Wextra -O2 -o sim main.cpp

install:
	git clone https://github.com/fmtlib/fmt.git

binary_to_assembler:
	./sim -ta -b >| assembly.s

assembly_to_binary:
	./sim -tb -a >| binary.txt

clean:
	rm -f sim 