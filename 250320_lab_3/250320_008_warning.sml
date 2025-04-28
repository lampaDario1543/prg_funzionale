(*
Write a function cycle1 that cycles a list by one position using patterns. If the list is empty, return the empty list.
• For instance
▪ cycle1 [1,2,3,4,5] = [2,3,4,5,1]
▪ cycle1 [1] = [1]
▪ cycle1 nil = nil
*)
fun cycle1(nil: int list)=nil
    | cycle1(x::xs: int list)= xs @ [x];

cycle1([1,2,3,4,5]);
cycle1 ([1]);
(*cycle1(["a","b","c","d","e"]);*)
cycle1 (nil);