(*
Write a function insertAll that takes an element
a and a list of lists L and inserts a at the front of
each of these lists.
• For example
• insertAll (1,[[2,3],[],[3]]) =[[1,2,3],[1],[1,3]]
• insertAll (1,nil) = nil
• insertAll (#"c",[[#"a",#"t"],[#"a",#"r"],nil])=[[#"c", #"a", #"t"], [#"c", #"a", #"r"],[#"c"]]
*)

fun insertAll(_:'a, nil)=nil
    |insertAll(n:'a, x :: xs:'a list list ) = ([n] @ x ) :: insertAll(n,xs);


insertAll (1,[[2,3],[],[3]])=[[1,2,3],[1],[1,3]];
insertAll (1,nil) = nil;
insertAll (#"c",[[#"a",#"t"],[#"a",#"r"],nil])=[[#"c", #"a", #"t"], [#"c", #"a", #"r"],[#"c"]];