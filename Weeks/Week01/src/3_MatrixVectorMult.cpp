#include <armadillo>
#include <iostream>

using namespace arma;
using namespace std;

// ./cpp_shell.sh 3_MatrixVectorMult

int main() {

  mat A = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
  };
  cout << "Matrix A =" << endl;
  A.print();

  vec v = {1, 1, 1};
  cout << "Vector v =" << endl;
  v.print();

  vec Av = A * v;
  cout << "A * v =" << endl;
  Av.print();

  return 0;
}