(*
With the signature
signature SET =
sig
type 'a set
end;
Add a definition for the structure Set
*)
signature SET =
    sig
    type 'a set
end;

structure Set :> SET= struct
    type 'a set = 'a list;
end;