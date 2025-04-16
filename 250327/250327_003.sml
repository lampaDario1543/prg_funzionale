(*
Write a function square that takes as input an
integer n and compute the square of n, using
patterns according to the formula
𝑛
2 = 𝑛 − 1
2 + 2𝑛 − 1
• For instance
• square(2) = 4
• square(5) = 25
• square (0) =  0
*)


fun square(0)=0
    |square(n)=square(n-1) + ((2*n)-1);

square(2);
square(5);
square(0);