(*
Write a short function thousandthPower that, given a real
x, uses let val to compute 𝑥
1000
• For instance:
▪ thousandthPower 1.0 = 1.0
▪ thousandthPower 1.1 = 2.469932918E41
*)

fun thousandthPower(x:real)=
    let
        val five = x*x*x*x*x; (*x^5*)
        val ten = five*five; (*x^5*x^5= x^10*)
        val fifty = ten*ten*ten*ten*ten; (*x^10*x^10*x^10*x^10*x^10= x^50*)
        val hundred = fifty*fifty;
    in
        hundred*hundred*hundred*hundred*hundred*hundred*hundred*hundred*hundred*hundred
    end;

thousandthPower 1.0;
thousandthPower 1.1;