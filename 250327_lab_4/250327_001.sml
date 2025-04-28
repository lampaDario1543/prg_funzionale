(*
Write a function flip that flips alternate elements
of a list using patterns. [𝑎1
, 𝑎2
, … , 𝑎𝑛−1
,
𝑎𝑛
] should
become [𝑎2
, 𝑎1
, … , 𝑎𝑛, 𝑎𝑛−1]. If 𝑛 is odd, leave 𝑎𝑛
at the end.
• For instance
▪ flip [1,2,3,4,5] = [2,1,4,3,5]
▪ flip [1,2,3,4] = [2,1,4,3]
*)

fun flip(nil)=nil
    |flip(x::nil)= [x]
    |flip(x::y::xs)= [y] @ [x] @ flip(xs);

flip ([1,2,3,4,5]);
flip ([1,2,3,4]);