exception Missing;

datatype 'a btree = Empty | Node of 'a * 'a btree * 'a btree;
type ('a, 'b) mapTree = ('a * 'b) btree;


fun lookup lt Empty _= raise Missing
    |lookup lt (Node((a,b), left, right)) el = 
        if(lt (el,a)) then
            lookup lt left el
        else if lt (a,el) then
            lookup lt right el
        else
            b

val lt = fn (a,b) => a<b;

val myTree : (int,string) mapTree =
    Node ((5,"five"),
    Node ((3,"three"), Empty, Empty),
    Node ((7,"seven"), Empty, Empty));

lookup lt myTree 7; (*out: seven*)
lookup lt myTree 4; (*out: raise Missing*)