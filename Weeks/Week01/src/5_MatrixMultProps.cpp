#include <armadillo>
#include <iostream>

using namespace arma;
using namespace std;

// ./cpp_shell.sh 5_MatrixMultProps

int main() {
  mat A = {
    {1, 2}, {4, 5}
  };
  cout << "Matrix A =" << endl;
  A.print();

  mat B = {
    {1, 1}, {0, 2}
  };
  cout << "Matrix B =" << endl;
  B.print();

  mat I = eye(2, 2);
  cout << "Diagonal Matrix I =" << endl;
  I.print();

  mat IA = I * A;
  cout << "IA =" << endl;
  IA.print();

  mat AI = A * I;
  cout << "AI =" << endl;
  AI.print();

  mat AB = A * B;
  cout << "AB =" << endl;
  AB.print();

  mat BA = B * A;
  cout << "BA =" << endl;
  BA.print();

  vec v = {1, 1};
  cout << "v =" << endl;
  v.print();

  mat X = A * B * v;
  cout << "A * B * v" << endl;
  X.print();

  return 0;
}
