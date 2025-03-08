# Floating Point Arithmetic: Issues and Limitations

## Representation Error

Floating-point numbers are represented in computer hardware as base 2 (binary) fractions. For example, the decimal fraction:

```
0.125
```

has value 1/10 + 2/100 + 5/1000, and in the same way the binary fraction:

```
0.001
```

has value 0/2 + 0/4 + 1/8. These two fractions have identical values, the only difference being that the first is written in base 10 fractional notation, and the second in base 2.

Unfortunately, most decimal fractions cannot be represented exactly as binary fractions. A consequence is that, in general, the decimal floating-point numbers you enter are only approximated by the binary floating-point numbers actually stored in the machine.

## Rounding Error

The fact that 0.1 cannot be represented exactly as a float is the reason why (for example) `0.1 + 0.2` does not exactly equal `0.3`. While surprising at first, this is a fundamental limitation of floating-point arithmetic.

## Precision

Python’s floating-point numbers are usually 64-bit floating-point numbers, nearly equivalent to `double` in C. The precision is sufficient for most tasks, but you should be aware of its limitations.

## Conclusion

Understanding that floating-point arithmetic is an approximation can help you avoid many pitfalls. For more detailed information, please refer to the full [Floating Point Arithmetic: Issues and Limitations document](https://docs.python.org/3/tutorial/floatingpoint.html).
