(*
Write another version of the function maxList (reported below) to find the largest of a list of reals using a let val
declaration.
• Suggestion: you can think about the maximum of the tail
fun maxList([x:real]) = x
| maxList(x::y::zs) =
if x<y then maxList(y::zs)
else maxList(x::zs);
poly: : warning: Matches are not exhaustive.
val maxList = fn: real list -> real
*)


fun maxList([x:real]) = x
    | maxList(x::xs) =
        let 
            val maxTail = maxList(xs)        
            val max = if x<maxTail then maxTail else x
        in
            max
        end;

maxList([2.0]);
maxList([2.0,5.0,4.0]);
maxList([2.0,5.0,4.0,10.0]);
maxList([69.0,5.0,4.0]);