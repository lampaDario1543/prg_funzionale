(*
Write a function cycleip that, given an integer 𝑖
and a list 𝐿 = [𝑎1
, … , 𝑎𝑛
], cycles 𝐿 𝑖 times, i.e.,
produce
𝑎𝑖 + 1
,
𝑎𝑖 + 2
, … , 𝑎𝑛
, 𝑎1
, … , 𝑎𝑖
using patterns
• For instance
▪ cycleip([1,2,3,4],2) = [3,4,1,2]
▪ cycleip(["a","b","c","d","e"],4) =["e","a","b","c","d"]
*)

fun cycleip(l,0)=l
    | cycleip(nil, i)= nil 
    | cycleip(x::xs,i) = cycleip(xs @ [x],i-1);
cycleip([1,2,3,4],2);
cycleip(["a","b","c","d","e"],4);