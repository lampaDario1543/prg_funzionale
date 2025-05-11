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
val removefrom:
‘‘
a -> ‘‘a set -> ‘‘a set
end;
Add a definition for the structure and test it
*)

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
    val removeFrom: ''a -> ''a set -> ''a set
end;

structure Set :> SET= struct
    type 'a set = 'a list;
    val emptyset=nil;
    fun isin _ nil = false
        |isin el (x::xs) = if(el=x) then true else isin el xs;
    fun addin el nil = [el] 
        |addin el s = if isin el s then s else el::s;
    fun removeFrom _ nil = nil
        |removeFrom el (x::xs) = if(x=el) then xs else x :: removeFrom el xs;
    
end;

val s1= Set.addin 3 Set.emptyset;
val s2= Set.addin 4 s1;
val s3= Set.addin 5 s2;

val r=Set.removeFrom 3 s3;
