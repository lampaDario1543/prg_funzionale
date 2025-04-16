(*
• Write an efficient program doubleExp that, given as input a
real x and nonnegative 𝑖, computes x^2^i, making only one recursive call.
• For instance:
    ▪ doubleExp(1.1,3) = 2.14358881
*)


fun doubleExp(x:real,0)= x
    | doubleExp(x,i) = 
        let
            val y=doubleExp(x,i-1)
        in
            y*y
            end;

doubleExp(1.1,3);