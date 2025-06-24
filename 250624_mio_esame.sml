datatype Tree = Leaf of int | Node of int * Tree * Tree | Empty;

fun max ((a,b),(c,d))=
    if(a>=c) then (a,b) else (c,d);

fun sum_max_path (Empty:Tree) = (0,[])
    |sum_max_path (Leaf(x)) = (x,[x])
    |sum_max_path (Node(x,lx, rx))=
        let
            val (lxValue,pathLx)= sum_max_path(lx)
            val (rxValue,pathRx)= sum_max_path(rx)
            val lxValue=lxValue+x
            val rxValue=rxValue+x
            val pathLx= x::pathLx
            val pathRx= x::pathRx
        in
            max((lxValue,pathLx),(rxValue,pathRx))
        end;


val tree1 = Node(1, Empty, Node(2, Node(3, Leaf 5,Node(6, Node(8, Empty, Leaf 10),Leaf 9)),Node(4, Empty, Node(7,Leaf 10 ,Empty))));
val tree2 = Node(1, Leaf 100, Node(2, Node(3, Leaf 5,Node(6, Node(8, Empty, Leaf 10),Leaf 9)),Node(4, Empty, Node(7,Leaf 10 ,Empty))));
val tree3 = Empty;
val tree4 = Leaf 4;


sum_max_path(tree1);
sum_max_path(tree2);
sum_max_path(tree3);
sum_max_path(tree4);