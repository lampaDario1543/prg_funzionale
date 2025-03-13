(*
Write a function rnd that rounds a real number to
the nearest decimal (10th) digit
• For instance
▪ rnd(2.56) = 2.6
▪ rnd (5.678) = 5.7
▪ rnd (3.3) = 3.3
▪ rnd (4.128) = 4.1

*)

fun rnd(n:real)=
    real(floor(n))+real(round((n-real(floor(n)))*10.0))*0.1;

rnd(2.56);
rnd (5.678);
rnd (3.3);
rnd (4.128);