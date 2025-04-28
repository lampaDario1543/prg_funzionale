(*
• Improve the powerSet function by using a let
val declaration and computing the powerset of
the tail only once.
fun powerSet(nil) = [nil]
| powerSet(x::xs) =
powerSet(xs)@insertAll(x,powerSet(xs));
powerSet = fn: 'a list -> 'a list list

*)

fun insertAll(_:'a, nil)=nil
    |insertAll(n:'a, x :: xs:'a list list ) = ([n] @ x ) :: insertAll(n,xs);

fun powerSet(nil) = [nil]
    | powerSet(x::xs) = 
        let
            val tailRes=powerSet(xs);
        in
            tailRes@insertAll(x,tailRes)
        end;

powerSet([1,2,3]);