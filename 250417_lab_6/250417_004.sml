(*
Use the function simpleMap to replace every
negative element of a list of reals with 0.
• For instance applied to a list of reals such as L =
[0.0,1.0,~2.1,~2.3], it should return
[0.0,1.0,0.0,0.0]
*)

fun F(x:real)=
    if (x < 0.0) then 0.0 else x;

fun simpleMap (F,nil) = nil
    | simpleMap (F,x::xs) = F(x) :: simpleMap(F,xs);


val L =[0.0,1.0,~2.1,~2.3];
simpleMap(F,L);