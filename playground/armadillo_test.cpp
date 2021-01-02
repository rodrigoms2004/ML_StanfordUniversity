/*
  Code from 
  http://codingadventures.org/2020/05/24/how-to-install-armadillo-library-in-ubuntu/

  g++ armadillo_test.cpp -o armadillo_test.o -std=c++11 -O2 -larmadillo
  
  g++ armadillo_test.cpp -o armadillo_test.o -std=c++11 -O2 -I /usr/include/ -DARMA_DONT_USE_WRAPPER -lopenblas

*/

#include <armadillo>
#include <iostream>

using namespace arma;
using namespace std;


int main () {

  mat A(2, 3); // directly specify the matrix size (elements are unitialized)
  A << 1 << 2 << 3 << 3 << endr 
    << 2 << 0 << 6 << 2 << endr 
    << 3 << 4 << 9 << 7 << endr; 

  A.print("A:");
  mat B = orth(A);
  B.print("B:");

  cout << "The rank of A is " << arma::rank(A) << endl; 
  return 0;
}

