fun isIn el nil = false
    |isIn el (x::xs) = if(el = x) then true else isIn el xs;


fun verifyRow nil nil= true
    | verifyRow nil _= true
    |verifyRow (x::xs) used= 
        if not (isIn x used) andalso x <> 0 then verifyRow xs (x::used)
        else if x=0 then verifyRow xs used
        else false;


fun verifyRows nil= true
    |verifyRows (x::xs) = verifyRow x nil andalso verifyRows xs;

val board=[        
        [5, 3, 4, 6, 7, 8, 9, 1, 2],
        [6, 7, 2, 1, 9, 5, 3, 4, 8],
        [1, 9, 8, 3, 4, 2, 5, 6, 7],    
        [8, 5, 9, 7, 6, 1, 4, 2, 3],
        [4, 2, 6, 8, 5, 3, 7, 9, 1],
        [7, 1, 3, 9, 2, 4, 8, 5, 6],
        [9, 6, 1, 5, 3, 7, 2, 8, 4],
        [2, 8, 7, 4, 1, 9, 6, 3, 5],
        [3, 4, 5, 2, 8, 6, 1, 7, 9]
    ];
verifyRows board;