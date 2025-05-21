fun getRow nil = nil
    |getRow (x::x1::x2::xs) =
        let 
        val newX = tl (tl (tl (x)))
        val newX1 = tl (tl (tl (x1)))
        val newX2 = tl (tl (tl (x2)))
        val cell = hd x :: hd (tl (x)):: hd (tl (tl (x))):: hd x1 :: hd (tl (x1)) :: hd (tl (tl (x1))) :: hd x2 :: hd (tl (x2)):: hd (tl (tl (x2))) :: nil
        in if(newX=nil) then [cell] else cell :: getRow (newX::newX1::newX2::xs) end;

fun getCells nil = nil
    |getCells (x::x1::x2::x3::x4::x5::x6::x7::x8::xs) =
        let val first3 = getRow (x::x1::x2::nil)
        in (first3 ::nil);
val board=[

    [5, 3, 0, 0, 7, 0, 0, 0, 0],
    [6, 0, 0, 1, 9, 5, 0, 0, 0],
    [0, 9, 8, 0, 0, 0, 0, 6, 0],
    [8, 0, 0, 0, 6, 0, 0, 0, 3],
    [4, 0, 0, 8, 0, 3, 0, 0, 1],
    [7, 0, 4, 0, 2, 0, 0, 0, 6],
    [0, 6, 0, 0, 0, 0, 2, 8, 0],
    [0, 0, 0, 4, 1, 9, 0, 0, 5],
    [0, 0, 0, 0, 8, 0, 0, 7, 9]

];
val neg=getRow (board);