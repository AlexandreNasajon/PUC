Python 3.6.1 (v3.6.1:69c0db5, Mar 21 2017, 18:41:36) [MSC v.1900 64 bit (AMD64)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> import math
>>> help math
SyntaxError: invalid syntax
>>> help (math)
Help on built-in module math:

NAME
    math

DESCRIPTION
    This module is always available.  It provides access to the
    mathematical functions defined by the C standard.

FUNCTIONS
    acos(...)
        acos(x)
        
        Return the arc cosine (measured in radians) of x.
    
    acosh(...)
        acosh(x)
        
        Return the inverse hyperbolic cosine of x.
    
    asin(...)
        asin(x)
        
        Return the arc sine (measured in radians) of x.
    
    asinh(...)
        asinh(x)
        
        Return the inverse hyperbolic sine of x.
    
    atan(...)
        atan(x)
        
        Return the arc tangent (measured in radians) of x.
    
    atan2(...)
        atan2(y, x)
        
        Return the arc tangent (measured in radians) of y/x.
        Unlike atan(y/x), the signs of both x and y are considered.
    
    atanh(...)
        atanh(x)
        
        Return the inverse hyperbolic tangent of x.
    
    ceil(...)
        ceil(x)
        
        Return the ceiling of x as an Integral.
        This is the smallest integer >= x.
    
    copysign(...)
        copysign(x, y)
        
        Return a float with the magnitude (absolute value) of x but the sign 
        of y. On platforms that support signed zeros, copysign(1.0, -0.0) 
        returns -1.0.
    
    cos(...)
        cos(x)
        
        Return the cosine of x (measured in radians).
    
    cosh(...)
        cosh(x)
        
        Return the hyperbolic cosine of x.
    
    degrees(...)
        degrees(x)
        
        Convert angle x from radians to degrees.
    
    erf(...)
        erf(x)
        
        Error function at x.
    
    erfc(...)
        erfc(x)
        
        Complementary error function at x.
    
    exp(...)
        exp(x)
        
        Return e raised to the power of x.
    
    expm1(...)
        expm1(x)
        
        Return exp(x)-1.
        This function avoids the loss of precision involved in the direct evaluation of exp(x)-1 for small x.
    
    fabs(...)
        fabs(x)
        
        Return the absolute value of the float x.
    
    factorial(...)
        factorial(x) -> Integral
        
        Find x!. Raise a ValueError if x is negative or non-integral.
    
    floor(...)
        floor(x)
        
        Return the floor of x as an Integral.
        This is the largest integer <= x.
    
    fmod(...)
        fmod(x, y)
        
        Return fmod(x, y), according to platform C.  x % y may differ.
    
    frexp(...)
        frexp(x)
        
        Return the mantissa and exponent of x, as pair (m, e).
        m is a float and e is an int, such that x = m * 2.**e.
        If x is 0, m and e are both 0.  Else 0.5 <= abs(m) < 1.0.
    
    fsum(...)
        fsum(iterable)
        
        Return an accurate floating point sum of values in the iterable.
        Assumes IEEE-754 floating point arithmetic.
    
    gamma(...)
        gamma(x)
        
        Gamma function at x.
    
    gcd(...)
        gcd(x, y) -> int
        greatest common divisor of x and y
    
    hypot(...)
        hypot(x, y)
        
        Return the Euclidean distance, sqrt(x*x + y*y).
    
    isclose(...)
        isclose(a, b, *, rel_tol=1e-09, abs_tol=0.0) -> bool
        
        Determine whether two floating point numbers are close in value.
        
           rel_tol
               maximum difference for being considered "close", relative to the
               magnitude of the input values
            abs_tol
               maximum difference for being considered "close", regardless of the
               magnitude of the input values
        
        Return True if a is close in value to b, and False otherwise.
        
        For the values to be considered close, the difference between them
        must be smaller than at least one of the tolerances.
        
        -inf, inf and NaN behave similarly to the IEEE 754 Standard.  That
        is, NaN is not close to anything, even itself.  inf and -inf are
        only close to themselves.
    
    isfinite(...)
        isfinite(x) -> bool
        
        Return True if x is neither an infinity nor a NaN, and False otherwise.
    
    isinf(...)
        isinf(x) -> bool
        
        Return True if x is a positive or negative infinity, and False otherwise.
    
    isnan(...)
        isnan(x) -> bool
        
        Return True if x is a NaN (not a number), and False otherwise.
    
    ldexp(...)
        ldexp(x, i)
        
        Return x * (2**i).
    
    lgamma(...)
        lgamma(x)
        
        Natural logarithm of absolute value of Gamma function at x.
    
    log(...)
        log(x[, base])
        
        Return the logarithm of x to the given base.
        If the base not specified, returns the natural logarithm (base e) of x.
    
    log10(...)
        log10(x)
        
        Return the base 10 logarithm of x.
    
    log1p(...)
        log1p(x)
        
        Return the natural logarithm of 1+x (base e).
        The result is computed in a way which is accurate for x near zero.
    
    log2(...)
        log2(x)
        
        Return the base 2 logarithm of x.
    
    modf(...)
        modf(x)
        
        Return the fractional and integer parts of x.  Both results carry the sign
        of x and are floats.
    
    pow(...)
        pow(x, y)
        
        Return x**y (x to the power of y).
    
    radians(...)
        radians(x)
        
        Convert angle x from degrees to radians.
    
    sin(...)
        sin(x)
        
        Return the sine of x (measured in radians).
    
    sinh(...)
        sinh(x)
        
        Return the hyperbolic sine of x.
    
    sqrt(...)
        sqrt(x)
        
        Return the square root of x.
    
    tan(...)
        tan(x)
        
        Return the tangent of x (measured in radians).
    
    tanh(...)
        tanh(x)
        
        Return the hyperbolic tangent of x.
    
    trunc(...)
        trunc(x:Real) -> Integral
        
        Truncates x to the nearest Integral toward 0. Uses the __trunc__ magic method.

DATA
    e = 2.718281828459045
    inf = inf
    nan = nan
    pi = 3.141592653589793
    tau = 6.283185307179586

FILE
    (built-in)


>>> math.pi
3.141592653589793
>>> a = 23
>>> b = 56
>>> math.sin(a+b)
-0.4441126687075084
>>> math.cos(a+b)
-0.8959709467909631
>>> n = facorial(5)
Traceback (most recent call last):
  File "<pyshell#8>", line 1, in <module>
    n = facorial(5)
NameError: name 'facorial' is not defined
>>> n = math.factorial(5)
>>> print(n)
120
>>> p = math.factorial(3)
>>> print(p)
6
>>> n/( p * math.factorial(5 - 3) )
10.0
>>> 'Eu1 * 15
SyntaxError: EOL while scanning string literal
>>> 'Eu' * 15
'EuEuEuEuEuEuEuEuEuEuEuEuEuEuEu'
>>> 10 * 'Eu' + 'gosto'
'EuEuEuEuEuEuEuEuEuEugosto'
>>> 'Eu' + 'gosto' * 10
'Eugostogostogostogostogostogostogostogostogostogosto'
>>> 'Pode dividir?' / 3
Traceback (most recent call last):
  File "<pyshell#18>", line 1, in <module>
    'Pode dividir?' / 3
TypeError: unsupported operand type(s) for /: 'str' and 'int'
>>> x = 'eu'
>>> x[0,1]
Traceback (most recent call last):
  File "<pyshell#20>", line 1, in <module>
    x[0,1]
TypeError: string indices must be integers
>>> x[0 : 1]
'e'
>>> import random
>>> help(random.choice)
Help on method choice in module random:

choice(seq) method of random.Random instance
    Choose a random element from a non-empty sequence.

>>> alfabeto = "abcdefghijklmnopqrstuvwxyz"
>>> random.choice(alfabeto)
'b'
>>> random.choice(alfabeto)
'j'
>>> nome = nasabot
Traceback (most recent call last):
  File "<pyshell#27>", line 1, in <module>
    nome = nasabot
NameError: name 'nasabot' is not defined
>>> nome = "nasabot"
>>> n = int(len(nome))
>>> **n + nome + **n
SyntaxError: invalid syntax
>>> "*" * n + nome + "*" * n
'*******nasabot*******'
>>> "*" * n/2 + nome + "*" * n/2
Traceback (most recent call last):
  File "<pyshell#32>", line 1, in <module>
    "*" * n/2 + nome + "*" * n/2
TypeError: unsupported operand type(s) for /: 'str' and 'int'
>>> n = int(len(nome)/2)
>>> "*" * n + nome + "*" * n
'***nasabot***'
>>> dd = "04" , mm = "01" , aaaa = "1996"
SyntaxError: can't assign to literal
>>> dd = "04"
>>> mm = "01"
>>> aaaa = "1996"
>>> dd+mm+aaaa
'04011996'
>>> dd+"/"+mm+"/"+aaaa
'04/01/1996'
>>> "Não se esqueça do meu aniversário: "+dd+mm+"!!!'
SyntaxError: EOL while scanning string literal
>>> "Não se esqueça do meu aniversário: "+dd+mm+"!!!"
'Não se esqueça do meu aniversário: 0401!!!'
>>> "Não se esqueça do meu aniversário: "+dd+"/"+mm+"!!!"
'Não se esqueça do meu aniversário: 04/01!!!'
>>> encomenda = 34250
>>> peso = 178
>>> encomenda + "Kg e " + peso + "g"
Traceback (most recent call last):
  File "<pyshell#46>", line 1, in <module>
    encomenda + "Kg e " + peso + "g"
TypeError: unsupported operand type(s) for +: 'int' and 'str'
>>> str(encomenda)
'34250'
>>> encomenda = str(encomenda)
>>> peso = str(peso)
>>> encomenda + "Kg e " + peso + "g"
'34250Kg e 178g'
>>> str(3^1000)
'1003'
>>> str(len(3^1000))
Traceback (most recent call last):
  File "<pyshell#52>", line 1, in <module>
    str(len(3^1000))
TypeError: object of type 'int' has no len()
>>> str(len(int(3^1000)))
Traceback (most recent call last):
  File "<pyshell#53>", line 1, in <module>
    str(len(int(3^1000)))
TypeError: object of type 'int' has no len()
>>> len(str(3^1000)))
SyntaxError: invalid syntax
>>> len(str(3^1000))
4
>>> str(len(3^1000))
Traceback (most recent call last):
  File "<pyshell#56>", line 1, in <module>
    str(len(3^1000))
TypeError: object of type 'int' has no len()
>>> 
