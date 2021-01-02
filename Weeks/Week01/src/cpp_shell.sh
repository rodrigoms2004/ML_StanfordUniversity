g++ $1.cpp -o $1.o -std=c++11 -O2 -I /usr/include/ -DARMA_DONT_USE_WRAPPER -lopenblas
./$1.o