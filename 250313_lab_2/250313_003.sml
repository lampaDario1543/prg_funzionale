(*
Give examples of objects of the following types,
without using empty lists
((int * int) * (bool list) * real) * (real * string)
(bool * int) * char
real * int list list list list
*)
val a=(((1,2), [true,false], 3.0), (4.0, "pippo"));
val b= ((true, 1), #"t");
val c= (2.0, [[[[1]]]]);