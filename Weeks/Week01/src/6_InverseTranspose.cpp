#include <armadillo>
#include <iostream>

using namespace arma;
using namespace std;

// ./cpp_shell.sh 6_InverseTranspose

int main() {
  mat A = {
    {1, 2, 0},
    {0, 5, 6},
    {7, 0, 9}
  };
  cout << "Matrix A =" << endl;
  A.print();

  mat A_trans = trans(A);
  cout << "Transpose of A =" << endl;
  A_trans.print();

  mat A_inv = inv(A);
  cout << "Inverse of A =" << endl;
  A_inv.print();

  mat A_invA = inv(A) * A;
  cout << "What is A^(-1) * A =" << endl;
  A_invA.print();

  return 0;
}