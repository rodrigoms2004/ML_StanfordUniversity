#include <armadillo>
#include <iostream>

using namespace arma;
using namespace std;

// ./cpp_shell.sh 4_MatrixMatrixMult

int main() {
  mat A = {
    {1, 2}, {3, 4}, {5, 6}
  };
  cout << "Matrix A =" << endl;
  A.print();

  vec B = {1, 2};
  cout << "Matrix B =" << endl;
  B.print();

  vec mult_AB = A * B;
  cout << "A * B =" << endl;
  mult_AB.print();

  return 0;
}