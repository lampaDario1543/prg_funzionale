(*
Write a function pow that computes x^i where x is a real, and i a non-negative integer. It doesn't need to work for 𝑖 < 0
For instance:
• pow(2.1,3) = 9.261
• pow(2.0,3) = 9.0
*)


fun pow(n:real,i:int)=
    if(i=0)
    then 1.0
    else pow(n,i-1) * n;

pow(2.1,3);
pow(2.0,3);