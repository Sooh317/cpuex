main:
	g++ -I ./fmt/include -Wall -Wextra -O2 -o sim main.cpp

install:
	git clone https://github.com/fmtlib/fmt.git

binary_to_assembly:
	./sim -ta -b >| assembly_binary/assembly.txt

assembly_to_binary:
	./sim -tb -a >| assembly_binary/binary.txt

clean:
	rm -f sim 