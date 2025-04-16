(*
• Write a function printList that given as input a
list of integers, prints it.
• For instance:
    ▪ printList nil;
    ▪ printList [1,2,3];
1
2
3
*)

fun printList(nil)=print("")
    | printList(x::xs: int list)=
        (
            print(Int.toString(x)^"\n");
            printList(xs)
        );

printList nil;
printList ([1,2,3]);