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


fun returnThird (_::_::nil) = raise shortList("Too short")
    | returnThird(_::nil) = raise shortList("Too short")
    | returnThird(nil)= raise shortList("Too short")
    | returnThird(_::_::trd::_) = trd;


returnThird([1,2,3,4,5]);
returnThird ([1,2]);