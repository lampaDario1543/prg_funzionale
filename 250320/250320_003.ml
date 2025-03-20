(*
Write a function duplicate that duplicates each
element of a list, that is given the list 𝐿 = [𝑎1 , … , 𝑎𝑛 ], produce the list 𝑎1, 𝑎1, 𝑎2, 𝑎2, … , 𝑎𝑛, 𝑎𝑛
For instance
• duplicate([1,2,3,4]) = [1,1,2,2,3,3,4,4]
• duplicate(["a","b","c"]) = ["a","a","b","b","c",“c"]
*)

fun duplicate(l:''a list)=
    if(l=nil)
    then l
    else [hd(l)] @ [hd(l)] @ duplicate(tl(l));


duplicate([1,2,3,4]);
duplicate([1,2,3]);
duplicate(["a","b","c"]);