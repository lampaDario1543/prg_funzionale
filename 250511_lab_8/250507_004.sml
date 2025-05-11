(*
With the signature signature SET =
sig type ‘a set
val emptyset:
‘a set
val isin:
‘‘
a -> ‘‘a set -> bool
end;
Add a definition for the structure Set and test it
*)

signature SET =
    sig
    (*type 'a set = 'a list;*)
    type 'a set
    val emptyset: 'a set
    val isin:''a -> ''a set -> bool
end;
structure Set :> SET= struct
    type 'a set = 'a list;
    val emptyset=nil;
    fun isin _ nil = false
        |isin el (x::xs) = if(el=x) then true else isin el xs;
end;

Set.isin 3 Set.emptyset;