(*
Define a structure Tree for this signature
signature TREE =
sig
datatype 'a T = Lf | Br of 'a * 'a T * 'a T
val countNodes :
‘a T -> int
val depth :’a T -> int
val mirror : ‘a T -> ‘a T
end; 
*)
signature TREE = sig
    datatype 'a T = Lf | Br of 'a * 'a T * 'a T
    val countNodes: 'a T -> int
    val depth: 'a T -> int
    (*
    val mirror: 'a T -> 'a T
    *)
end;

structure Tree :> TREE = struct
    datatype 'a T = Lf | Br of 'a * 'a T * 'a T;
    fun countNodes Lf = 0
        |countNodes (Br(_, left, right)) = 1+countNodes left + countNodes right;
    fun depth Lf = 0
        |depth (Br(_,left,right))
end;