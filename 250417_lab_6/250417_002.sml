(*
Write a factorial function fact that, given an integer n,
returns n!, 1 when its argument is 0, 0 for a negative
argument with an error message “Negative argument x
found” where x is the negative argument
• For instance
▪ fact 5 = 120
▪ fact 0 = 1
▪ fact ~2 = 0
Negative argument ~2 found.
*)

fun fact(0) = 1
    | fact(n)=
        if(n<0) then (print("Negative argument "^Int.toString(n)^" found.\n"); 0) else n*fact(n-1);


fact (5);
fact (0);
fact (~2);