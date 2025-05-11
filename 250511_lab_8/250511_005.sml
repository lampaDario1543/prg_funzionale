(*
With the signature
signature SET =
sig
type ‘a set
val emptyset:
‘a set
val isin:
‘‘
a -> ‘‘a set -> bool
val addin:
‘‘
a -> ‘‘a set -> ‘‘a set
end;
Add a definition for the structure and test it

*)

signature SET =
sig
    type 'a set
    val emptyset:'a set
    val isin:''a -> ''a set -> bool
    val addin: ''a -> ''a set -> ''a set
end;

structure Set :> SET= struct
    type 'a set = 'a list;
    val emptyset=nil;
    fun isin _ nil = false
        |isin el (x::xs) = if(el=x) then true else isin el xs;
    fun addin el nil = [el] 
        |addin el s = if isin el s then s else el::s;
end;

val s1= Set.addin 3 Set.emptyset;
val s2= Set.addin 4 s1;

Set.isin 3 s1;
Set.isin 4 s1;
Set.isin 3 s2;
Set.isin 4 s2;