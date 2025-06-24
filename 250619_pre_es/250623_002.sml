
fun len nil=0
    |len (x::xs)=1+len(xs);

fun somma_pos (n, nil, _) = n
    |somma_pos (n, (x::xs), pos)=
    if((pos mod 3) = 0) then
        x+somma_pos(n, xs, pos+1)
    else
        somma_pos(n, xs, pos+1)

fun sommali n l =
    if len l < 3 then n else somma_pos (n, l, 1);

sommali 0 [1,2,3];
sommali 1 [1,2,3];
sommali 2 [1,2,3,4,5,6];