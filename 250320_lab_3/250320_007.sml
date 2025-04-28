
(*
Write the factorial function fact using patterns
For instance:
▪ fact 1 = 1
▪ fact 10 = 3628800
*)
fun fact(1)= 1
    | fact(n)= fact(n-1)*n;

fact(1);
fact(2);
fact(3);
fact(4);
fact(5);
fact(10);