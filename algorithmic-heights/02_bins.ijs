0 : 0

Binary search is the ultimate divide-and-conquer algorithm. To find a key k in a large file containing keys A[1..n] in sorted order, we first compare k with A[n/2], and depending on the result we recurse either on the first half of the file, A[1..n/2], or on the second half, A[n/2+1..n]. The recurrence now is T(n)=T(n/2)+O(1). Plugging into the master theorem (with a=1,b=2,d=0) we get the familiar solution: a running time of just O(logn).

Source: Algorithms by Dasgupta, Papadimitriou, Vazirani. McGraw-Hill. 2006.
Problem

The problem is to find a given set of keys in a given array.

Given: Two positive integers n≤105
and m≤105, a sorted array A[1..n] of integers from −105 to 105 and a list of m integers −105≤k1,k2,…,km≤105.

Return: For each ki, output an index 1≤j≤n s.t. A[j]=ki or "-1" if there is no such index.

Sample Dataset

5
6
10 20 30 40 50
40 10 35 15 40 20

Sample Output

4 1 -1 -1 4 2


)


NB. This one is a bit weird from a j (or APL) perspective, the Index Of (x i. y) family of operators
NB. have a lot of optimizations under the hood: https://code.jsoftware.com/wiki/Vocabulary/SpecialCombinations
NB. I think j developers would never manually code a binary search (as in most languages you'd use the library provided search functions of course).
NB. The Index Of operator creates a hashmap and does hash lookups under the hood.
NB. The hashmap can be precomputed and saved if an array is going to be searched often:

haystack =. 10 20 30 40 50
needles =. 40 10 35 15 40 20

NB. find indexes of needles in haystack
haystack i. needles

NB. pre-compute search hashmap
searchhaystack =. haystack&i.

NB. Search efficiently for needles in the hashmap
searchhaystack needles

NB. The problem definition uses 1 based array indexing unlike j (and all the APL languages afaik)
1 + searchhaystack needles

NB. i. returns the length of the array when a needle doesn't exist in the haystack
NB. So we need to change those to _1 to meet the problem requirements above
1 + _2 (I. res=#haystack) } res=.searchhaystack needles
