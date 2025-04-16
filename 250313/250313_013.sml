(*
Write a function rem that, given a list, removes the
second element. It doesn't need to work on lists
shorter than 2.
• For instance
▪ rem [1,2,3,4] = [1,3,4]
▪ rem [1,2] = [1]
*)

fun rem(l)=
    [hd(l)] @ tl(tl(l));

rem [1,2,3,4];
rem [6,1,9];
rem [1,2];