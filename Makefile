main:
	g++ -I ./fmt/include -Wall -Wextra -O2 -o sim main.cpp

clean:
	rm -f sim 