(*
Write a function printXs that given an integer n,
print 2^n Xs
• For instance
▪ printXs 3;
XXXXXXXX
*)

fun getNumber(0)=1
    | getNumber(n) = 2*getNumber(n-1);

fun printX(0)=print("\n")
    | printX(n)=
            (
                print("X");
                printX(n-1)
            );

fun printXs(n)=
    let
        val dim=getNumber(n)
    in
        printX(dim) end;

printXs 3;