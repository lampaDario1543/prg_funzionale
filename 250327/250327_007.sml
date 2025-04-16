(*
Write a function delete that deletes an element
from a set delete(x,S) using patterns – if the set
contains the element. If the item is not contained in
the set, the function returns the set itself.
• For instance
• delete(1,[2,3,4]) = [2,3,4]
• delete (1,[2,1,3]) = [2,3]
• delete (1,nil) = nil
• delete (#"a",[#"c",#"b",#"a"]) = [#"c",#"b"] 
*)


fun delete(_, nil)= nil
    |delete(n, x::xs) = if n=x then xs else [x] @ delete(n,xs);

delete(1,[2,3,4]) = [2,3,4];
delete (1,[2,1,3]) = [2,3];
delete (1,nil) = nil;
delete (#"a",[#"c",#"b",#"a"]) = [#"c",#"b"];