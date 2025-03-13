(*
Write a function thirdchar that finds the third character of a string (it doesn't have to work properly on shorter strings)
For instance
    thirdchar "abcd" = "c"
*)
fun thirdchar (s:string)=
    hd(tl(tl(explode s)));

thirdchar "abcd";
thirdchar "Pippo";
thirdchar "Franco";
thirdchar "Kevin";