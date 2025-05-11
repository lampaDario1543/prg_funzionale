(*
• With the signature
signature SET =
sig
type 'a set
val emptyset:
‘a set
end;
Add a definition for the structure Set and test it
*)
signature SET =
    sig
    type 'a set
    val emptyset:'a set
end;

structure Set :> SET= struct
    type 'a set = 'a list;
    val emptyset=nil;
end;