(*
Write a function min3 that computes the smallest component of a tuple of type int*int*int
For instance
▪ min3 (2,3,4) = 2
▪ min3 (3,2,4) = 2
*)

fun min3(n,n1,n2) =
if n<n1 then
    if n<n2
        then n
        else n2
    else
         if n2<n1
            then n2
            else n1;
min3(2,3,4);
min3(3,2,4);
min3(3,2,1);
min3(1,2,3);
min3(2,1,3);