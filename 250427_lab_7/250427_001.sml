(*
Write, in curried form, a function applyList that
takes a list of functions and a value and applies
each function to the value, producing a list of the
results. If the list is empty it returns the empty list.
• For instance
▪ applyList [fn x=>x*2, fn x => x*x*x] 4 =
[8,64]
*)

fun applyList nil _ = nil
    | applyList (f::funcs) num= f(num) :: applyList funcs num;

applyList [fn x=>x*2, fn x => x*x*x] 4;