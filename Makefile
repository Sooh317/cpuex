main:
	g++ -O2 main.cpp util.cpp decode.cpp memory.cpp sim.cpp instruction.cpp directive.cpp

clean:
	rm -f a.out