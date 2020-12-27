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