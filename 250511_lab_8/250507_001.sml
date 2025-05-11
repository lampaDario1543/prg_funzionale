(*
Define a signature SET with
▪ Parameterized type ‘a set
▪ Value for empty set (emptyset)
▪ Operator to test the membership of an element to a set
(isin)
▪ Operator to add an element to a set (addin)
▪ Operator to remove an element from a set
(removefrom)
*)

signature SET = sig
type 'a set
val emptyset: 'a set
val isin : ('a set * 'a) -> bool
val addin: ('a set * 'a) -> 'a set
val removeFrom: ('a set * 'a) -> 'a set
end;