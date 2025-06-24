fun filter (P,nil) = nil
    | filter (P,x::xs) =
        if P(x) then x::filter(P,xs)
        else filter (P,xs);

filter (fn x => x>=10, [1,10,23,5,16]);

fun f(x)=x+1;
fun g(x)=x*2;
val h= g o f; (*h= g(f(x))*)
h(10); (*(10+1)*2*)

