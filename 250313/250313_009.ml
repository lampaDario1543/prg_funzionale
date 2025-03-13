(*
Write a function cycle that cycles a list once, i.e., convert [a1,...,an] to [a2,...,an,a1]. It
doesn't have to work on the empty list.

cycle [1,2,3,4] = [2,3,4,1]
cycle [1] = [1]
*)
fun cycle(l)=
    tl(l) @ [hd(l)]; (*Needs casting [f*ck]*)

cycle [1,2,3,4];
cycle [1];