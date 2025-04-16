(*
Write a function sort that, given three integers (a
tuple), produce a list of them in sorted order
• For instance
▪ sort (1,2,3) = [1,2,3]
▪ sort (1,3,2) = [1,2,3]

*)
fun sort(a,b,c)=
    if a < b
        then
            if a < c
                then if c < b
                    then (a,c,b)
                    else (a,b,c)
                else
                    (c,a,b)
        else
            if b < c
                then if c < a
                    then (b,c,a)
                    else (b,a,c)
                else
                    (c,b,a);


sort (1,2,3);
sort (1,3,2);
sort (3,2,1);
sort (3,1,2);
sort (2,3,1);
sort (2,1,3);