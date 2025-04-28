(*
Write a function third that computes the third element of a list (it doesn't have to work properly on shorter lists).
For instance:
third [2,3,4] = 4
third [2,3,4,5] = 4

*)

fun third(l)=
    hd(tl(tl(l))); (*ZUPUP solution*)

third [2,3,4];
third [2,3,4,5];