(*Malinverno Tommaso, Casari Simone
253723
252228
*)

fun getCols nil = nil
    |getCols (x::x1::x2::x3::x4::x5::x6::x7::x8::xs) =
        let val col = hd x :: hd x1:: hd x2:: hd x3:: hd x4:: hd x5:: hd x6::hd x7::hd x8::nil
        in if(tl x=nil) then [col] else col :: getCols (tl x:: tl x1::  tl x2:: tl x3::  tl x4:: tl x5:: tl x6:: tl x7::tl x8::xs) end;

fun getCells nil = nil (*non prende le ultime 6 cells ?*)
    |getCells (x::x1::x2::x3::x4::x5::x6::x7::x8::xs) =
        let 
        val newX = tl (tl (tl (x)))
        val newX1 = tl (tl (tl (x1)))
        val newX2 = tl (tl (tl (x2)))
        val newX3 = tl (tl (tl (x3)))
        val newX4 = tl (tl (tl (x4)))
        val newX5 = tl (tl (tl (x5)))
        val newX6 = tl (tl (tl (x6)))
        val newX7 = tl (tl (tl (x7)))
        val newX8 = tl (tl (tl (x8)))
        val cell = hd x :: hd (tl (x)):: hd (tl (tl (x))):: hd x1 :: hd (tl (x1)) :: hd (tl (tl (x1))) :: hd x2 :: hd (tl (x2)):: hd (tl (tl (x2))) :: nil
        val cell1 = hd x3 :: hd (tl (x3)):: hd (tl (tl (x3))):: hd x4 :: hd (tl (x4)) :: hd (tl (tl (x4))) :: hd x5 :: hd (tl (x5)):: hd (tl (tl (x5))) :: nil
        val cell2 = hd x6 :: hd (tl (x6)):: hd (tl (tl (x6))):: hd x7 :: hd (tl (x7)) :: hd (tl (tl (x7))) :: hd x8 :: hd (tl (x8)):: hd (tl (tl (x8))) :: nil
        in if(newX=nil) then cell::cell1::cell2::nil else cell :: cell1 :: cell2:: getCells (newX::newX1::newX2::newX3::newX4::newX5::newX6::newX7::newX8::xs) end;
fun isIn el nil = false
    |isIn el (x::xs) = if(el = x) then true else isIn el xs;


fun verifyList nil nil= true
    | verifyList nil _= true
    |verifyList (x::xs) used= 
        if not (isIn x used) andalso x <> 0 then verifyList xs (x::used)
        else if x=0 then verifyList xs used
        else false;


fun verifyLists nil= true
    |verifyLists (x::xs) = verifyList x nil andalso verifyLists xs;

fun verifySudoku board = 
    let val cols = getCols board
    val cells=getCells board
    in
        verifyLists board andalso verifyLists cols andalso verifyLists cells
    end;

val board= [
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

verifySudoku board;