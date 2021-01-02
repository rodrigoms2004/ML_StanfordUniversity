# Machine Learning by Stanford University

December 26, 2020

https://www.coursera.org/learn/machine-learning/home/info


**Taught by:Andrew Ng, Instructor**
Founder, DeepLearning.AI & Co-founder, Coursera

## Octave for Linux

```
sudo apt-add-repository ppa:octave/stable
sudo apt-get update
sudo apt-get install octave

sudo apt-get install octave-control octave-image octave-io octave-optim octave-signal octave-statistics
```

* [Octave for Debian systems](https://wiki.octave.org/Octave_for_Debian_systems)

## Numpy

### Numpy decimal format

From [3 decimal places](https://stackoverflow.com/questions/22222818/how-to-printing-numpy-array-with-3-decimal-places)

```
import numpy as np

np.set_printoptions(formatter={'float': lambda x: "{0:0.3f}".format(x)})
```


### Useful links

[numpy.matrix](https://numpy.org/doc/stable/reference/generated/numpy.matrix.html)

## C++ 

### Armadillo

[Armadillo C++ library for linear algebra & scientific computing](http://arma.sourceforge.net/docs.html#syntax)

[How to install Armadillo library in Ubuntu](http://codingadventures.org/2020/05/24/how-to-install-armadillo-library-in-ubuntu/)


#### Install in Ubuntu 18.04

```
sudo apt install libopenblas-dev liblapack-dev

tar -xvf armadillo-10.1.2.tar.xz
cd armadillo-10.1.2
./configure
make
sudo make install

```

#### Installed at

```
...
/usr/include/armadillo_bits/
-- Up-to-date: /usr/include/armadillo_bits/glue_kron_bones.hpp
-- Up-to-date: /usr/include/armadillo_bits/Row_meat.hpp
-- Up-to-date: /usr/include/armadillo
-- Installing: /usr/lib/x86_64-linux-gnu/libarmadillo.so.10.1.2
-- Up-to-date: /usr/lib/x86_64-linux-gnu/libarmadillo.so.10
-- Up-to-date: /usr/lib/x86_64-linux-gnu/libarmadillo.so
-- Set runtime path of "/usr/lib/x86_64-linux-gnu/libarmadillo.so.10.1.2" to ""
-- Up-to-date: /usr/share/Armadillo/CMake/ArmadilloLibraryDepends.cmake
-- Installing: /usr/share/Armadillo/CMake/ArmadilloLibraryDepends-noconfig.cmake
-- Up-to-date: /usr/share/Armadillo/CMake/ArmadilloConfig.cmake
-- Up-to-date: /usr/share/Armadillo/CMake/ArmadilloConfigVersion.
```

#### Compiling 

Source code in *playground/armadillo_test.cpp*

```
g++ armadillo_test.cpp -o armadillo_test.o -std=c++11 -O2 -I /usr/include/ -DARMA_DONT_USE_WRAPPER -lopenblas
```

Or 

```
g++ armadillo_test.cpp -o armadillo_test.o -std=c++11 -O2 -larmadillo
```


#### Running 

```
./armadillo_test.o 

A:
   1.0000   2.0000   3.0000   3.0000
   2.0000        0   6.0000   2.0000
   3.0000   4.0000   9.0000   7.0000
B:
  -0.3199  -0.3684
  -0.4194   0.8812
  -0.8496  -0.2962
The rank of A is 2
```

#### Shell script

At *Weeks/Week01/src/cpp_shell.sh*

```
g++ $1.cpp -o $1.o -std=c++11 -O2 -I /usr/include/ -DARMA_DONT_USE_WRAPPER -lopenblas
./$1.o
```

Make it executable

```
chmod +x cpp_shell.sh
```

Run using 
```
./cpp_shell.sh 1_MatricesAndVectors
    1.0000    2.0000    3.0000
    4.0000    5.0000    6.0000
    7.0000    8.0000    9.0000
   10.0000   11.0000   12.0000
```



