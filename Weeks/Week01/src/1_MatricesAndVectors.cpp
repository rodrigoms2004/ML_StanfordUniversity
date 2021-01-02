
#include <armadillo>
#include <iostream>

using namespace arma;
using namespace std;

// ./cpp_shell.sh 1_MatricesAndVectors


int main() {

     mat A(4, 3);
     A = {
          {1, 2, 3},
          {4, 5, 6},
          {7, 8, 9},
          {10, 11, 12}
     };

     A.print();

     vec v(3);
     v = {1, 2, 3};

     v.print();

     cout << "Dimension of A: " 
          <<"(" << A.n_rows << "," 
          << A.n_cols << ")" << endl;

     cout << "Dimension of v: " 
          <<"(" << v.n_rows << "," 
          << v.n_cols << ")" << endl;


     cout << A(1, 2) << endl;

     return 0;
}
