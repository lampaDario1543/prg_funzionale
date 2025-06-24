(*
Write a function prefixes (having type string ->
string list) that given a string, returns a list of strings
including all the prefixes of the input string (including the
string itself and except for the empty string).
• For example:
prefixes "ciao" = ["c" , "ci", "cia", "ciao"];
prefixes "" = [];
prefixes "hi world“ = ["h", "hi", "hi ", "hi
w", "hi wo", "hi wor", "hi worl", "hi world"];
*)


fun prefixes_aux(nil, _)=nil
    |prefixes_aux(x::xs, current)=
        let val newCurrent=current^str(x)
        in
            [newCurrent] @ prefixes_aux(xs, newCurrent)
        end;

fun prefixes ""=nil
    |prefixes s = prefixes_aux(explode(s), "");

prefixes "";
prefixes "ciao";
prefixes "hi world";