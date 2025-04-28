(*
Write a function power that computes x^i where x is a real, and i a non-negative integer. It doesn't need to work for 𝑖 < 0
For instance:
• power(2.1,3) = 9.261
• power(2.0,3) = 9.0
*)


fun power(n,0)= 1.0
    | power(n,i) = n*power(n,i-1);

power(2.1,3);
power(2.0,3);