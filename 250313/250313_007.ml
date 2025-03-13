(*
Write a function reverse that reverses a tuple of length 3
For instance:
reverse (1,2,3) = (3,2,1)
reverse (1.0,2,"a") = ("a",2,1.0)
*)
fun reverse(a,b,c)=
    (c,b,a);

reverse (1,2,3);
reverse (1.0,2,"a");