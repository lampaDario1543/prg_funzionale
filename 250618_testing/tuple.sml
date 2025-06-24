val t = (4, 5.0, "six");
#1 (t);
#3 (t);


val L= [1,2,3];
val L1= [2,3];
val M= [1,2,3];

L=L1;
L=M;

(*
fun rev1 (L) =
    if L = nil then nil
    else rev1(tl(L)) @ [hd(L)];

rev1(L);
*)