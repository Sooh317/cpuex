main:
	g++ -O2 main.cpp util.cpp decode.cpp sim.cpp instruction.cpp directive.cpp memory.cpp

clean:
	rm -f a.out