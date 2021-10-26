main:
	g++ -Wall -Wextra -O2 -o sim main.cpp util.cpp decode.cpp sim.cpp instruction.cpp directive.cpp memory.cpp cpu.cpp option.cpp

clean:
	rm -f sim 