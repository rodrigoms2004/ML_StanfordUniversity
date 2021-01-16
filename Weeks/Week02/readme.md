# Multiple Linear Regression

## Octave

### Prompt

```
$ octave-cli

octave:1> PS1('>> ');

>>

a = 3;  % semicolon supressing output

>> a=pi;
>> disp(a);
 3.1416
>> disp(sprintf('2 decimals: %0.2f', a))
2 decimals: 3.14

>> disp(sprintf('6 decimals: %0.6f', a))
6 decimals: 3.141593

>> format long
>> a
a =  3.14159265358979
>> format short 
>> a
a =  3.1416

```

### Vectors and Matrix

Matrix

```
>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

% or

>> A = [1 2;
> 3 4;
> 5 6]
A =

   1   2
   3   4
   5   6

```

Vector

```
% 1 by 3

>> v = [1 2 3]
v =

   1   2   3

% 3 by 1

>> v = [1; 2; 3]
v =

   1
   2
   3
```

vector increment

```
>> v=1:0.1:2
v =

    1.0000    1.1000    1.2000    1.3000    1.4000    1.5000    1.6000    1.7000    1.8000    1.9000    2.0000

>> v = 1:6
v =

   1   2   3   4   5   6


>> ones(2,3)
ans =

   1   1   1
   1   1   1

>> C = 2*ones(2,3)
C =

   2   2   2
   2   2   2

>> w = ones(1,3)
w =

   1   1   1

>> w = zeros(1,3)
w =

   0   0   0

>> w = rand(1,3)
w =

   0.74500   0.21067   0.59133

>> rand(3,3)
ans =

   0.649714   0.859712   0.049187
   0.012301   0.571484   0.590260
   0.042679   0.768846   0.851883

```

Gaussian distribution

```
>> w = randn(1,3)
w =

   1.45320   1.47969   0.44801

>> w = randn(1,3)
w =

  -0.61885   1.93074   1.26952


>> w = -6 + sqrt(10)*(randn(1, 10000));
>> size(w)
ans =

       1   10000
```

Histogram

```
>> hist(w)

>> hist(w, 50) % with 50 beans
```

Identity matrix

```
>> eye(4)
ans =

Diagonal Matrix

   1   0   0   0
   0   1   0   0
   0   0   1   0
   0   0   0   1

>> eye(3)
ans =

Diagonal Matrix

   1   0   0
   0   1   0
   0   0   1

```

Help command

```
>> help rand
```

Size of matrix

```
>> size(A, 1) % number of rowa
ans =  3
>> size(A, 2) % number of columns
ans =  2


>> v = [1 2 3 4]
v =

   1   2   3   4

>> length(v)
ans =  4

>> length(A)
ans = 3

```

Path

```
>> pwd
ans = /home/rodrigo/Documents/ML_StanfordUniversity
```

### Loading data

```
>> pwd
ans = /home/rodrigo/Documents/ML_StanfordUniversity/Weeks/Week02/data

>> load featuresX.dat 
>> load priceY.dat 

OR

>> load('featuresX.dat')

>> who
Variables in the current scope:

A          ans        featuresX  priceY     sz         v


>> size(featuresX)
ans =

   47    2

>> size(priceY)
ans =

   47    1

>> whos
Variables in the current scope:

   Attr Name           Size                     Bytes  Class
   ==== ====           ====                     =====  ===== 
        A              3x2                         48  double
        ans            1x2                         16  double
        featuresX     47x2                        752  double
        priceY        47x1                        376  double
        sz             1x2                         16  double
        v              1x4                         32  double

Total is 155 elements using 1240 bytes

```

Clearing data

```
>> clear featuresX
>> 
>> whos
Variables in the current scope:

   Attr Name        Size                     Bytes  Class
   ==== ====        ====                     =====  ===== 
        A           3x2                         48  double
        ans         1x2                         16  double
        priceY     47x1                        376  double
        sz          1x2                         16  double
        v           1x4                         32  double

Total is 61 elements using 488 bytes
```

Saving elements 

```
>> v = priceY(1:10)
v =

   399900
   329900
   369000
   232000
   539900
   299900
   314900
   198999
   212000
   242500

>> whos
Variables in the current scope:

   Attr Name        Size                     Bytes  Class
   ==== ====        ====                     =====  ===== 
        A           3x2                         48  double
        ans         1x2                         16  double
        priceY     47x1                        376  double
        sz          1x2                         16  double
        v          10x1                         80  double

Total is 67 elements using 536 bytes
```

Saving to disk and cleaning all

```
>> save hello.mat v;

>> clear

>> whos
>> 
```

Saving in a human readable format ASCII text

```
>> save hello.txt v -ascii
```

### Manipulating data

```
>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> A(3, 2) % get element at row 3, column 2
ans =  6

>> A(2,:) % get all elements at row 2
ans =

   3   4

>> A(:, 2) % get all elements at column 2
ans =

   2
   4
   6

>> A([1 3], :) % get all elements of first and third rows
ans =

   1   2
   5   6

>> A(:, 2) = [10; 11; 12] % assigning
A =

    1   10
    3   11
    5   12

>> A = [A, [100; 101; 102]]; % append another column vector to  right
>> A
A =

     1    10   100
     3    11   101
     5    12   102


>> A(:) % put all elements of A into a single vector
ans =

     1
     3
     5
    10
    11
    12
   100
   101
   102


>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6
>> B = [11 12; 13 14; 15 16]
B =

   11   12
   13   14
   15   16

>> C = [A B]
C =

    1    2   11   12
    3    4   13   14
    5    6   15   16

>> C = [A; B]
C =

    1    2
    3    4
    5    6
   11   12
   13   14
   15   16


>> [A , B] == [A B]
ans =

  1  1  1  1
  1  1  1  1
  1  1  1  1

```

### Computing on Data

```
>> A
A =

   1   2
   3   4
   5   6

>> B
B =

   11   12
   13   14
   15   16

>> C = [1 1; 2 2]
C =

   1   1
   2   2

>> A
A =

   1   2
   3   4
   5   6

>> B
B =

   11   12
   13   14
   15   16

>> C = [1 1; 2 2]
C =

   1   1
   2   2

>> A .* B
ans =

   11   24
   39   56
   75   96

>> A .^ 2
ans =

    1    4
    9   16
   25   36

>> v = [1; 2; 3]
v =

   1
   2
   3

>> 1 ./ v
ans =

   1.00000
   0.50000
   0.33333

>> 1 ./ A
ans =

   1.00000   0.50000
   0.33333   0.25000
   0.20000   0.16667

>> log(v)
ans =

   0.00000
   0.69315
   1.09861

>> exp(v)
ans =

    2.7183
    7.3891
   20.0855

>> abs(v)
ans =

   1
   2
   3

>> abs([-1; 2; -3])
ans =

   1
   2
   3

>> -v
ans =

  -1
  -2
  -3
```

Incremeting v

```
>> v + ones(length(v),1)
ans =

   2
   3
   4

>> v + 1
ans =

   2
   3
   4
```
Transpose

```
>> A
A =

   1   2
   3   4
   5   6

>> A'
ans =

   1   3   5
   2   4   6

```
Maximum value

```
>> a = [1 15 2 0.5]
a =

    1.00000   15.00000    2.00000    0.50000

>> val = max(a)
val =  15

>> [val, ind] = max(a) % return max value and its index
val =  15
ind =  2
```

Elementwise 

```
>> a
a =

    1.00000   15.00000    2.00000    0.50000

>> a < 3
ans =

  1  0  1  1

>> find(a < 3)
ans =

   1   3   4

```

#### Create an N-by-N magic square.

A magic square is an arrangement of the integers '1:n^2' such that
the row sums, column sums, and diagonal sums are all equal to the
same value.

**Note**: N must be a scalar greater than or equal to 3.  If you supply
N less than 3, magic returns either a nonmagic square, or else the
degenerate magic squares 1 and [].

```
>> A = magic(3)
A =

   8   1   6
   3   5   7
   4   9   2

>> [r, c] = find(A >= 7)
r =

   1
   3
   2

c =

   1
   2
   3

>> A(1, 1)
ans =  8
>> A(3, 2)
ans =  9
>> A(2, 3)
ans =  7

```

Functions...

```
>> a
a =

    1.00000   15.00000    2.00000    0.50000

>> sum(a)
ans =  18.500
>> prod(a)
ans =  15
>> floor(a)
ans =

    1   15    2    0

>> ceil(a)
ans =

    1   15    2    1

>> max(rand(3), rand(3)) % 3x3 matrix max rand 3
ans =

   0.611291   0.537442   0.073558
   0.377362   0.605565   0.768966
   0.765581   0.626110   0.917727



>> A
A =

   8   1   6
   3   5   7
   4   9   2

>> max(A, [], 1)
ans =

   8   9   7

>> max(A, [], 2)
ans =

   8
   7
   9

>> max(A)
ans =

   8   9   7

>> max(max(A))
ans =  9


>> A(:)
ans =

   8
   3
   4
   1
   5
   9
   6
   7
   2

>> max(A(:))
ans =  9


>> A = magic(9)
A =

   47   58   69   80    1   12   23   34   45
   57   68   79    9   11   22   33   44   46
   67   78    8   10   21   32   43   54   56
   77    7   18   20   31   42   53   55   66
    6   17   19   30   41   52   63   65   76
   16   27   29   40   51   62   64   75    5
   26   28   39   50   61   72   74    4   15
   36   38   49   60   71   73    3   14   25
   37   48   59   70   81    2   13   24   35

>> sum(A, 1)
ans =

   369   369   369   369   369   369   369   369   369

>> sum(A, 2)
ans =

   369
   369
   369
   369
   369
   369
   369
   369
   369

>> eye(9)
ans =

Diagonal Matrix

   1   0   0   0   0   0   0   0   0
   0   1   0   0   0   0   0   0   0
   0   0   1   0   0   0   0   0   0
   0   0   0   1   0   0   0   0   0
   0   0   0   0   1   0   0   0   0
   0   0   0   0   0   1   0   0   0
   0   0   0   0   0   0   1   0   0
   0   0   0   0   0   0   0   1   0
   0   0   0   0   0   0   0   0   1

>> A.*eye(9)
ans =

   47    0    0    0    0    0    0    0    0
    0   68    0    0    0    0    0    0    0
    0    0    8    0    0    0    0    0    0
    0    0    0   20    0    0    0    0    0
    0    0    0    0   41    0    0    0    0
    0    0    0    0    0   62    0    0    0
    0    0    0    0    0    0   74    0    0
    0    0    0    0    0    0    0   14    0
    0    0    0    0    0    0    0    0   35

>> sum(sum(A.*eye(9)))
ans =  369

>> sum(sum(A.*flipud(eye(9)))) % other diagonal
ans =  369

>> flipud(eye(9))
ans =

Permutation Matrix

   0   0   0   0   0   0   0   0   1
   0   0   0   0   0   0   0   1   0
   0   0   0   0   0   0   1   0   0
   0   0   0   0   0   1   0   0   0
   0   0   0   0   1   0   0   0   0
   0   0   0   1   0   0   0   0   0
   0   0   1   0   0   0   0   0   0
   0   1   0   0   0   0   0   0   0
   1   0   0   0   0   0   0   0   0
```

Inverse magic Matrix

```
>> A = magic(3)
A =

   8   1   6
   3   5   7
   4   9   2

>> pinv(A)
ans =

   0.147222  -0.144444   0.063889
  -0.061111   0.022222   0.105556
  -0.019444   0.188889  -0.102778

>> temp = pinv(A)
temp =

   0.147222  -0.144444   0.063889
  -0.061111   0.022222   0.105556
  -0.019444   0.188889  -0.102778

>> temp * A
ans =

   1.0000e+00   2.0817e-16  -3.1641e-15
  -6.1062e-15   1.0000e+00   6.2450e-15
   3.0531e-15   4.1633e-17   1.0000e+00
```


### Plotting Data


```
>> t=[0:0.01:0.98]; % from 0, step 0.01 until 0.98
>> size(t)
ans =

    1   99

>> y1 = sin(2*pi*4*t);
>> plot(t, y1);

>> y2 = cos(2*pi*4*t);
>> plot(t, y2);
```

#### Plotting multiple functions

```
>> plot(t, y2);
>> plot(t, y1);
>> hold on;
>> plot(t, y2, 'r');
>> xlabel('time')
>> ylabel('value')
>> legend('sin', 'cos')
>> title('my plot')

print -dpng 'myPlot.png'

>> close
```

Two figures

```
>> figure(1); plot(t, y1);
>> figure(2); plot(t, y2);
```

Subplot
```
>> subplot(1, 2, 1); % divides plot a 1x2 grid, access first element
>> plot(t,y1);
>> subplot(1, 2, 2);
>> plot(t,y2);

>> axis([0.5 1 -1 1])
>> clf;
```

Matrix Color

```
>> A = magic(5)
A =

   17   24    1    8   15
   23    5    7   14   16
    4    6   13   20   22
   10   12   19   21    3
   11   18   25    2    9

>> imagesc(A)

>> imagesc(A), colorbar, colormap gray;
```

### Control Statements: for, while, if statement, Functions


FOR statement

```
>> v=zeros(10,1)
v =

   0
   0
   0
   0
   0
   0
   0
   0
   0
   0

>> for i=1:10,
>    v(i)=2^i;
> end;
>> v
v =

      2
      4
      8
     16
     32
     64
    128
    256
    512
   1024

>> indices=1:10;
>> indices
indices =

    1    2    3    4    5    6    7    8    9   10

>> for i=indices,
>    disp(i);
> end;
 1
 2
 3
 4
 5
 6
 7
 8
 9
 10

```


WHILE statement

```
>> v
v =

      2
      4
      8
     16
     32
     64
    128
    256
    512
   1024

>> i = 1;
>> while i <= 5,
>     v(i) = 100;
>     i = i + 1;
> end;
>> v
v =

    100
    100
    100
    100
    100
     64
    128
    256
    512
   1024

% using break
>> i=1;
>> while true,
>     v(i) = 999;
>     i = i + 1;
>     if i == 6,
>         break;
>     end;
> end;
>> v
v =

    999
    999
    999
    999
    999
     64
    128
    256
    512
   1024


```


IF statement

```
>> v(1)
ans =  999
>> v(1) = 2;

>> if v(1) == 2,
>     disp('The value is one');
> elseif v(1) == 2,
>     disp('The value is two');
> else
>     disp('The value is not one or two')
> end;
The value is one

```

### Functions

File *Weeks/Week02/src/Functions/squareThisNumber.m*

```
function y = squareThisNumber(x)

y = x^2;
```

Calling it
```
>> squareThisNumber(5)
ans =  25
```

#### Search path

```
>> % Octave search path (advanced/optional)
>> addpath('/home/rodrigo/Documents/ML_StanfordUniversity/Weeks/Week02/src/Functions')
>> cd /home/rodrigo/
>> pwd
ans = /home/rodrigo
>> squareThisNumber(9)
ans =  81
```

#### Returning multiple values

In file *Weeks/Week02/src/Functions/squareAndCubeThisNumber.m*

```
function [y1, y2] = squareAndCubeThisNumber(x)

y1 = x^2;
y2 = x^3;
```

Calling it

```
>> [a, b] = squareAndCubeThisNumber(5);
>> a
a =  25
>> b
b =  125
```

### Const Function J(theta)

```
>> X = [1 1; 1 2; 1 3]
X =

   1   1
   1   2
   1   3

>> y = [1; 2; 3]
y =

   1
   2
   3

>> theta = [0;1];

```

File *Weeks/Week02/src/Functions/costFunctionJ.m*

```
function J = costFunctionJ(X, y, theta)

% X is the "design matrix" containing our training examples.
% y is the class labels

m = size(X,1);                    % number of training examples
predictions = X*theta;            % predictions of hypothesis on all m examples
sqrErrors = (predictions - y).^2; % squared errors

J = 1/(2*m) * sum(sqrErrors);
```

Calling it

```
>> costFunctionJ(X, y, theta)
ans = 0
```

theta == 0

```
>> theta = [0;0];
>> j = costFunctionJ(X, y, theta)
j =  2.3333
```

Is the same as (m = 3)

```
>> (1^2 + 2^2 + 3^2)/(2*3)
ans =  2.3333
```

### Vectorization

#### Unvectorized implementation
```
prediction = 0.0;
for j = 1:n+1,
   prediction = prediction +
   theta(j) * x(y)
end;
```
#### Vectorized implementation

```
prediction = theta’ * x;
```


#### Example

Given v and w vectors

```
>> v = [1; 2; 3]
v =

   1
   2
   3

>> w = [5; 6; 7]
w =

   5
   6
   7
```

The code implements:

```
>> for j = 1:3,
>     u(j) = 2*v(j) + 5*w(j);
> end;
>> u
u =

   27   34   41

```

To vectorize it...

```
>> u = 2*v + 5*w
u =

   27
   34
   41

```


### Test Octave

#### Question 3

Let AA be a 10x10 matrix and xx be a 10-element vector. Your friend wants to compute the product AxAx and writes the following code:

```
A = magic(10);
x = [1;2;3;4;5;6;7;8;9;0];
v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
end

>> v
v =

   2250
   2270
   2470
   2400
   2310
   2175
   2195
   2095
   2325
   2235

>> A * x
ans =

   2250
   2270
   2470
   2400
   2310
   2175
   2195
   2095
   2325
   2235

```

#### Question 4
```
v = magic(7);
v = v(:,2);
v
v =

   39
   47
    6
   14
   15
   23
   31

w = magic(7);
w = w(:,1);
w
w =

   30
   38
   46
    5
   13
   21
   22


z = 0;
for i = 1:7
   z = z + v(i) * w(i)
end
z =  1170
z =  2956
z =  3232
z =  3302
z =  3497
z =  3980
z =  4662

```

#### Question 5

```
for i = 1:7
  for j = 1:7
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end
```

C = X + 1; 


 D = X / 4; 


 B = X .^ 2; 