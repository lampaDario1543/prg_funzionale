(*
Write a function remove that, given a list 𝐿 and an
integer 𝑖, returns 𝐿 with the 𝑖
th element deleted. If
the length of 𝐿 is lower than 𝑖, return 𝐿.
• For instance
▪ remove([1],1) = []
▪ remove([1,2,3],3) = [1,2]
▪ remove([1,2],3) = [1,2]
*)

(*
fun len(nil) = 0
    |len(x::xs) = 1+len(xs);
fun remove(nil, i)= nil
    |remove(x::xs, i) = if len([x]@[xs])<i
*)

fun remove(L,i)=
    if L=nil
    then nil
    else if i=1
        then tl(L)
        else [hd(L)] @ remove(tl(L),i-1);
remove([1],1);
remove([1,2,3],3);
remove([3,2,1],2);
remove([1,2],3);