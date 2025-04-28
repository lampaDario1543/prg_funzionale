(*
Write a function readAndSum that, given a text file
containing a number per line, transforms each number into
an integer, sums them and returns the sum.
• You do not have to handle exceptions.
• In ML there exists a function Int.fromString (fn:
string -> int option)
• You can use support functions, if needed.
• For instance , given a file “numbers” containing
5
8
10
readAndSum (“numbers”) = 23
*)

fun getNumbers(in1)=
    if(TextIO.endOfStream(in1)) then nil
    else case TextIO.inputLine(in1) of
        SOME line => (
            case Int.fromString(line) of
                SOME n => n :: getNumbers(in1)
              | NONE => getNumbers(in1)
        )
        | NONE => getNumbers(in1);

fun sum(nil)= 0
    | sum(n::nums) = sum(nums)+n;

fun readAndSum(filename:string)=
    let val nums=getNumbers(TextIO.openIn (filename))
    in sum(nums) end;

readAndSum ("numbers.txt")
