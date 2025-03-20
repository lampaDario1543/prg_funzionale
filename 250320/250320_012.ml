(*
•Write a function maxList that computes the largest of a list of reals, assuming that the list is not
empty, using patterns.
For instance:
▪ maxList [2] = 2
▪ maxList [2,5,4] = 5
*)


fun maxList(nil)= 0
    | maxList(x::nil)= x
    | maxList(x::xs)= if(x>maxList(xs)) then x else maxList(xs);

maxList([2]);
maxList([2,5,4]);
maxList([2,5,4,10]);
maxList([69,5,4]);