(*
Write a function sumList that takes a list of integers and
returns a pair of the sum of the even positions and the sum
of the odd positions using the let val declaration.
• For instance:
    ▪ sumList([1,2,3,4]) = (4,6)
    ▪ sumList([]) = (0,0)
*)

fun sumList(nil)=(0,0)
    | sumList([a]) = (a,0)
    | sumList (a::b::cs) =
        let
            val (x,y) = sumList (cs)
        in
            (a+x,b+y)
        end;

sumList([1,2,3,4]);
sumList([]);