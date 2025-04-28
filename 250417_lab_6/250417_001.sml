(*
Write a program returnThird(L) that, given a list of
integers L, returns its third element. If the list is too short, it
raises an exception shortList and handles it by printing
“List too short.\n It only contains n elements.\n” where n is
the number of elements in the list.
• Forinstance
▪ returnThird [1,2,3,4] = 3
▪ returnThird [1,2]
List too short.
It only contains 2 elements.
*)

exception shortList of string;

fun len(nil)=0
    |len(x::xs)= 1+len(xs);

fun returnThirdAux(x::xs, 1)= x
    |returnThirdAux(nil, _) = raise shortList("List too short")
    |returnThirdAux(x::xs, n) = returnThirdAux(xs,n-1);

fun returnThird (l) = 
    let val length = len(l)
    in
        if(length < 3) then raise shortList("List too short")
        else returnThirdAux(l, 3) end;


returnThird([1,2,3,4,5]);
returnThird ([1,2]);