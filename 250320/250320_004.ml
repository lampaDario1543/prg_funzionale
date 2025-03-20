(*
Write a function len that computes the length of a list.
For instance
• len([1,2,3,4]) = 4
• len(["a","b","c"]) = 3

*)

fun len(l:''a list)=
    if(l=nil)
    then 0
    else len(tl(l))+1;

len([]);
len([1]);
len([1,2]);
len([1,2,3,4]);
len(["a","b","c"]);