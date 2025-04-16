(*
Write the split function without using a pattern (the
tuple) in the let val declaration but referencing the
components of the tuple
• That is, instead of using the tuple, use the operator for
accessing the first and the second item of the recursive call
of the split function.
> fun split(nil) = (nil,nil)
| split([a]) = ([a],nil)
| split (a::b::cs) =
let
val(M,N) = split (cs);
in
(a::M,b::N)
end;
val split = fn: 'a list -> 'a list * 'a list

*)

fun split(nil) = (nil,nil)
    | split([a]) = ([a],nil)
    | split (a::b::cs) =
        let
            val(M,N) = split (cs);
        in
            (a::M,b::N)
        end;

split([1,2,3,4])