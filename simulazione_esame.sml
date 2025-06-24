datatype tree = Leaf of int | Node of int * tree * tree | Empty;

fun count_occ(Empty, _) = 0
    |count_occ(Node(n, right, left), el)=
        if(n=el) then
            1+count_occ(right,el)+count_occ(left,el)
        else
            count_occ(right,el)+count_occ(left,el)
    |count_occ(Leaf(n),el)=if(n=el) then
            1
        else
            0;
fun count_tree_list (_, nil) = 0
    |count_tree_list(T, x::xs) = 
        count_occ(T,x) + count_tree_list(T,xs);

val example_tree = Node(1, Node(1, Leaf 3, Node(2, Leaf 1, Leaf 2)), Leaf 2);

count_tree_list(example_tree,[]);
count_tree_list(example_tree,[1]);
count_tree_list(example_tree,[3]);
count_tree_list(example_tree,[1,3]);