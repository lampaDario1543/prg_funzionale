(*
• Use filter to find the elements of a list of reals
that are greater than 0.
• For instance, applied to a list of reals such as L =
[1.1,~1.2,~1.3,1.4], it should return
[1.1,1.4]
*)

fun isGreaterThanZero (x)= x>0.0;

fun filter (P,nil) = nil
    | filter (P,x::xs) =
        if P(x) then x::filter(P,xs)
        else filter (P,xs);
val L = [1.1,~1.2,~1.3,1.4];
filter(isGreaterThanZero,L);