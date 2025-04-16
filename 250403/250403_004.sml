(*
Write a function sumPairs that takes a list of pairs
of integers, and returns a pair of the sum of each
component using the let val declaration.
For instance:
▪ sumPairs [(1,2),(3,4),(5,6)] = (9, 12)
▪ sumPairs [] = (0,0)
*)

fun sumPairs(nil) = (0,0)
    | sumPairs ((a,b)::cs) =
        let
            val (x,y)= sumPairs (cs)
        in
            (a + x, b + y)
        end;

sumPairs ([(1,2),(3,4),(5,6)]);

sumPairs ([]);
