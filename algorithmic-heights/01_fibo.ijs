0 : 0


Fibonacci numbers

Problem

The Fibonacci numbers 0,1,1,2,3,5,8,13,21,34,…
are generated by the following simple rule
    ⎧Fn−1+Fn−2,     n>1,
Fn= ⎨1,             n=1,
    ⎩0,             n=0.

Given: A positive integer n≤25.

Return: The value of Fn.

Source: Algorithms by Dasgupta, Papadimitriou, Vazirani. McGraw-Hill. 2006.
Sample Dataset

6

Sample Output

8

)

NB. Naive recursive immplementation
fib =: verb define
if.     y=0 do. 0
elseif. y=1 do. 1
else.   (fib y-1) + (fib y-2)
end.
)

NB. Add Memoization for improved efficiency
fibm =: fib M.

NB. basic performance comparison
0 : 0
   timespacex 'fib 24'
0.035427 11136
   timespacex 'fib M. 24'
0.031901 12992
)