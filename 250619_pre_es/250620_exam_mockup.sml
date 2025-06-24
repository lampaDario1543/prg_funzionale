(*
Write a function suffixes (having type string ->
string list) that given a string, returns a list of
strings including all the suffixes of the input string
(including the string itself and except for the empty
string).
• For example:
suffixes "ciao" = ["ciao","iao","ao","o"],
suffixes ""= [],
suffixes "hi world" = ["hi world","i
world","world","world","orld","rld","ld","d"
].

*)


fun suffixes_aux (nil) = nil
    |suffixes_aux (l as x::xs) = [implode(l)] @ (suffixes_aux(xs));

fun suffixes "" = nil
    |suffixes s = suffixes_aux (explode(s));

suffixes "hi world";