main:
	g++ -I ./fmt/include -Wall -Wextra -O2 -o sim main.cpp

binary_to_assembler:
	./sim -ta -b >| assembly.txt

assembly_to_binary:
	./sim -tb -a >| binary.txt

clean:
	rm -f sim 