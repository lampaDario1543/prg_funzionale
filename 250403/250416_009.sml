(*
Write a function comb to compute (n m), while
printing n, m and the result.
• You can use the factorial (write an auxiliary function
factorial) to compute the function 𝑛
• For instance:
    ▪ comb 5 2;
    n is 5
    m is 2
Result is 10
*)


fun fact(1)= 1
    | fact(n)= fact(n-1)*n;

fun comb(n,m)=
    let
        val n_fact= fact(n)
        val m_fact= fact(m)
        val diff_fact= fact(n-m)
    in
        trunc(real(n_fact)/real(m_fact * diff_fact)) (*maledetto operatore "/" che vuole i reali*)
    end;
comb (5,2);