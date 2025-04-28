(*
Use the function reduce to find the maximum of a
list of reals.
• For instance, applied to a list of reals such as L =
[1.1,2.2,4.4,3.3], it should return 4.4.
*)


exception EmptyList;

fun max(a:real,b:real) = if (a > b) then a else b;

fun reduce (F,nil) = raise EmptyList
    | reduce (F,[a]) = a
    | reduce (F,x::xs) = F(x, reduce(F,xs));

val L =[1.1,2.2,4.4,3.3];

reduce(max,L)
