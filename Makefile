main:
	g++ -O2 main.cpp util.cpp decode.cpp sim.cpp instruction.cpp directive.cpp memory.cpp cpu.cpp
	./a.out fib.s libmincaml.S > res.txt

clean:
	rm -f a.out res.txt