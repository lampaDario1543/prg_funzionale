(*
Write a function cyclei that, given an integer i and a list l = [a_i+1], … , 𝑎𝑛
], cycles 𝐿 𝑖 times, i.e.,
produce
𝑎𝑖 + 1
,
𝑎𝑖 + 2
, … , 𝑎𝑛
, 𝑎1
, … , 𝑎𝑖
• For instance
▪ cyclei([1,2,3,4],2) = [3,4,1,2]
▪ cyclei(["a","b","c","d","e"],4) = ["e","a","b","c","d"]
*)
fun cyclei(l:'a list,i:int)=
    if(i=0)
    then l
    else cyclei(tl(l) @ [hd(l)],i-1);

cyclei([1,2,3,4],2);
cyclei(["a","b","c","d","e"],4);