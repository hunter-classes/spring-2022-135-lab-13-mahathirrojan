main: main.o functions.o
	g++ -o main main.o functions.o 

tests: tests.o functions.o
	g++ -o tests tests.o functions.o

functions.o: functions.cpp functions.h

main.o: main.cpp functions.h

tests.o: tests.cpp doctest.h functions.h

clean: 
	rm -rf main.o functions.o tests.o 