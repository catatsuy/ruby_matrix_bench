# Introduction

I compare the execution time of the `NMatrix` and `matrix` which is the ruby standard library.

I will do the multiplication and the inverse of a 28-by-28 (square) matrix.
Input values is prepared in advance.
The Number of input values is 42837.


# Notes

This file use `NMatrix`.

[Installation · SciRuby/nmatrix Wiki](https://github.com/SciRuby/nmatrix/wiki/Installation)

In advance, you will install the dependent packages.
You might have to pass the environment variables depending on your environment.


# Result

    % bundle exec ruby bench.rb
           user     system      total        real
       6.460000   0.070000   6.530000 (  6.982642)
     666.870000   1.180000 668.050000 (694.251381)

    % bundle exec ruby bench.rb
           user     system      total        real
       6.540000   0.090000   6.630000 (  6.942445)
     683.680000   6.830000 690.510000 (786.069864)

    % bundle exec ruby bench.rb
           user     system      total        real
       7.070000   0.060000   7.130000 (  7.923331)
     667.280000   1.500000 668.780000 (700.111114)


# The Simulation Environment

|||
| ------------- |:-------------:|
| OS  | Debian7(wheezy) |
| CPU | AMD Athlon Dual Core Processor 4450e |
| Memory | 8GB |
| Ruby| 2.0.0p247 |


# LICENSE

This source code is released under the MIT License, see LICENSE
