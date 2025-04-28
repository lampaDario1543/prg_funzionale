(*
Use map, foldr and foldl for computing the
logical AND of a list of Booleans
• For instance
▪ andb [true, false, true] = false
*)

fun andb (nil) = false
    | andb (l) = foldr (fn(a,b) => a andalso b) true l;

andb ([true, false, true]);