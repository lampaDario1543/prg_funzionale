(*Write a function maxList that computes the largest (in a lexicographical sense) element of a list of strings, e.g., ([“a”,”abc”,“ab”] → “abc”). It doesn't need to work for empty lists.
• Note that in the lexicographical order:
> "abc">"ab";
val it = true: bool
> "abc">"abb";
val it = true: bool
> "ab">"a";
val it = true: bool
For instance:
• maxList(["a","abc","ab"]) = "abc"*)
fun maxList(l:string list)=
    if(tl(l)=nil)
    then hd(l)
    else
        if(hd(l)>maxList(tl(l)))
        then hd(l)
        else maxList(tl(l));

maxList(["a","abc","ab"]);
maxList(["a","abc","abcd"]);
maxList(["abcd","abc","ab"]);