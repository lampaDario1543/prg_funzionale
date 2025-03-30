(*
Let us represent sets by lists. We represent a set by
a list: the elements can be in any order, but without
repetitions.
• Write a function member(x,S) to test whether x is
a member of set S using patterns.
• For instance
• member (1,[2,3]) = false
• member (2,[2,3,1]) = true
• member (5,nil) = false
• member ("b",["aa","c"]) = false
*)


fun member(_, nil)=false
    |member(n, x::xs)= if n=x then true else member(n,xs);

member (1,[2,3]) = false;
member (2,[2,3,1]) = true;
member (5,nil) = false;
member ("b",["aa","c"]) = false;