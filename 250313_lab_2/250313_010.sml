(*
Write a function min_max_pair that, given 3
integers (a tuple), produce a pair consisting of the
smallest and the largest value among the 3 integers
• For instance
▪ min_max_pair (1,2,3) = (1,3)
▪ min_max_pair(3,4,2) = (2,4)
*)

fun min(a,b,c) =
if a<b then
    if a<c
        then a
        else c
    else
         if c<b
            then c
            else b;

fun max(a,b,c) =
if a>b then
    if a>c
        then a
        else c
    else
         if c>b
            then c
            else b;


fun min_max_pair(a,b,c)=
    (min(a,b,c), max(a,b,c));

min_max_pair (1,2,3);
min_max_pair(3,4,2);