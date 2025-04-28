(*
Suppose that sets are represented by lists. Write a
function powerSet that takes a list L, and produces as
output the power set of the list
• If 𝑆 is a set, the power set of 𝑆 is the set of all subsets 𝑆’
such that 𝑆′ ⊆ 𝑆
• You can use support functions, if needed
• For instance
• powerSet([1,2,3])=[[],[1],[2],[3],[1,2],[1,3],[2,3],[1,2,3]]
• powerSet [#"a",#"c"]=[[], [#"c"], [#"a"], [#"a",#"c"]]
• powerSet nil = [[]] (do not care about type warning)
*)

fun insertAll(_:'a, nil)=nil
    |insertAll(n:'a, x :: xs:'a list list ) = ([n] @ x ) :: insertAll(n,xs);

fun powerSet(nil) = [nil]
| powerSet(x::xs) = powerSet(xs) @ insertAll(x,powerSet(xs));

powerSet([1,2,3]);
(*powerSet [#"a",#"c"]=[[], [#"c"], [#"a"], [#"a",#"c"]];
powerSet nil = [[]];*)