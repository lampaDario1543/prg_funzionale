
(*
Write a function fact that computes the factorial of n, n! = 1 ∗ 2 ∗ … ∗ n
where 𝑛 ≥ 1. It does not need to work correctly for small 𝑛.
For instance:
▪ fact 1 = 1
▪ fact 10 = 3628800
*)
fun fact(n:int)=
    if(n=1) then 1 else fact(n-1)*n;

fact(1);
fact(2);
fact(3);
fact(5);
fact(10);