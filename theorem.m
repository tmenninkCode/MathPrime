clear all;

Consider a number N on the interval x^2/2 and (x-1)^2/2.  (x, N positive integers );
The length of the interval is x^2/2 - (x-1)^2/2 = x -1/2

draw a horizontal line with the length of the interval, centered around the origin.
This line goes from -x/2+0.25 to x/2-0.25
Now we want to draw a dot where N is on the interval, starting from the right.

The smallest possible value of N on the interval is N >= (x-1)^2/2, which is either 0.5 larger than (x-1)^2/2 if x = even, or exactly (x-1)^2/2 if x = odd.
So the location of the dot x_n belonging to the smallest N is x/2-0.25-0.5 if x = even, so x_n modulo 1 = 0.25.
Furthermore the location of the dot x_n belonging to the smallest N is x/2-0.25 if x = odd, which will also result in x_n modulo 1 = 0.25.
Thus: x_n is always 0.25 + i (i integer).

xn = x/2-0.25 - (N - (x-1)^2/2);

xn = 0.25 + i

0.25+i = x/2 -0.25 - N + x^2/2 - 2*x/2 +1/2
i = x^2/2 - x/2 -N
N = x^2/2 - x/2 - i
Factor out x:
5
x1 = -0.5 + sqrt(0.25 +2*i) = -1/2 + sqrt(1 + 8*i)/2
x2 = -0.5 - sqrt(0.25 +2*i) = -1/2 - sqrt(1 + 8*i)/2
N = a*(x-x1)(x-x2)
Only for i>= 0 N can be factored into two real numbers. This does not prove anything about N being prime or not. If the two factors however are both integers, 
it does prove that N is not prime. So for any negative i, we cannot say will the number be prime or not. For some positive i's, we can conclude it is non prime.
For both x1 and x2 to be integers, 1+8*i must be the square of an uneven number. There is a nice series for this.
1 + 8*0 = 1^2.:             N = (x-0)*(x+1)
1 + 8*(0+1) = 3^2.          N = (x-1)*(x+2)
1 + 8*(0+1+2) = 5^2         N = (x-2)*(x+3)
etc.
so if i = sum(1..k) of (k-1). 
Then those N's are definitely not prime.


This means, that for the dots on our interval line, if we would only print a dot when N is prime, 
    there will be a very predictable pattern where there are definitely no primes. Vertical bands among 0.25 + 0, 0.25 + (0+1), 0.25 + (0+1+2) etc etc.
    
