(*
Write a function flip that takes as input a list of
pairs of integers and orders each pair so that the
smallest number is first, using patterns.
• For instance
• flip [(1,2),(4,3)] = [(1,2),(3,4)]
• flip [(5,2),(4,3),(6,5),(1,2)] =
[(2,5),(3,4),(5,6),(1,2)]
• flip [(1,1),(1,2)] = [(1,1),(1,2)]
• flip nil = nil
*)

fun flip(nil)=nil
    |flip((x,y)::zs)= if x<y then [(x,y)] @ flip(zs)  else [(y,x)] @ flip(zs);

flip ([(1,2),(4,3)]);
flip ([(5,2),(4,3),(6,5),(1,2)]);
flip ([(1,1),(1,2)]);
flip (nil);