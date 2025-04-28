(**)

fun tabulate (a,_,1,F) = print(Real.toString(a)^" "^Real.toString(F(a))^"\n")
    | tabulate (a:real, delta:real, n: int, F)= (
        print(Real.toString(a)^" "^Real.toString(F(a))^"\n");
        tabulate(a+delta, delta, n-1, F)
    );

tabulate (1.0,0.1,9,fn x => x*x);