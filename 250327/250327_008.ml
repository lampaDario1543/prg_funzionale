(*
• Write a function insert that inserts an element x
into a set S (in whatever order) using patterns.
Since S is a set, although a list is used for
representing it, it has to be added only if it is not
already present in the set.
• For instance
• insert (2,[3,4,5]) = [3,4,5,2]
• insert (3,[3,4,5]) = [3,4,5]
• insert (2, nil) = [2]
• insert (#"a",[#"b",#"c"]) = [#"b",#"c",#"a"]
*)

fun insert(n, nil) = [n]
    |insert(n, x::xs)= if(n=x) then x::xs else x::insert(n, xs);

insert (2,[3,4,5]) = [3,4,5,2];
insert (3,[3,4,5]) = [3,4,5];
insert (2, nil) = [2];
insert (#"a",[#"b",#"c"]) = [#"b",#"c",#"a"];