#include <armadillo>
#include <iostream>

using namespace arma;
using namespace std;


// ./cpp_shell.sh 2_AddScalarMult

int main() {

  mat A(2, 3);
  A = {
    {1, 2, 4},
    {5, 3, 2}
  };
  A.print();

  cout << endl;

  mat B(2, 3);
  B = {
    {1, 3, 4},
    {1, 1, 1}
  };
  B.print();

  const int s = 2;
  cout << "Constant s: " << s << endl;

  mat add_AB = A + B;
  cout << "add_AB =\n" <<  add_AB << endl;

  mat sub_AB = A - B;
  cout << "sub_AB =\n" <<  sub_AB << endl;

  mat mult_As = A * s;
  cout << "mult_A s=\n" <<  mult_As << endl;

  mat div_As = A / s;
  cout << "div_As =\n" <<  div_As << endl;

  mat add_As = A + s;
  cout << "add_As =\n" <<  add_As << endl;

  return 0;
}
