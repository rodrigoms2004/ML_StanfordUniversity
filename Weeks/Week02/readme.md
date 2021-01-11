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
