datatype FOR = For of int * (int -> int);

fun eval (For(n, funz)) x=
    if(n<=1) then funz(x)
    else eval (For(n-1,funz)) (funz x);

val f= fn x => x*2;
val g= eval (For(3,f));
g 5;