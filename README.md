Downscaled Davis Dataset
========================

* Author    : Pablo Arias <pariasm@gmail.com>
* Copyright : (C) 2018 IPOL Image Processing On Line http://www.ipol.im/
* Licence   : GPL v3+, see LICENSE

OVERVIEW
--------

Code to generate a downscaled version of the 
[2017 Davis dataset](https://davischallenge.org/davis2017/code.html).
The code
consists of two shell scripts and some C simple image manipulation functions (stolen 
from [imscript](https://github.com/mnhrdt/imscript) by Enric Meinhardt-Llopis).
It has been tested in Ubuntu 16.04.


DEPENDENCIES
------------

To compile the image tools we need
- libpng
- libtiff
- libjpeg
- libfftw

COMPILATION
-----------

The code is compilable on Unix/Linux (probably on Mac OS as well, but we didn't test). 
We provide a simple Makefile to compile the C code.
```
$ cd imscript-lite && make && cd ..
```

USAGE
-----

First download and unpack the DAVIS dataset. There are three datasets: traival, test-dev and test-challenge.
For example for test-dev

```$ ./download-and-unpack.sh test-dev```

Then downscale the unpacked sequences:

```
$ ./downsample.sh test-dev | sh
```
or, if you have `parallel` installed on you system:
```
$ ./downsample.sh test-dev | parallel
```

