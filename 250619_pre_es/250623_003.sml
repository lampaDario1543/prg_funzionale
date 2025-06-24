datatype tree = Leaf of int | Node of int * tree * tree | Empty;

fun count_occ (Leaf(n)) x= if n=x then 1 else 0
    |count_occ Empty _ =0
    |count_occ (Node(n, rx, lx)) x = if n=x then 1+ (count_occ rx x) + (count_occ lx x) else (count_occ rx x) + (count_occ lx x);

fun count_tree_list (_, nil)= 0
    |count_tree_list(t, l) = foldr (op +) 0 (map (count_occ t) l);


val example_tree = Node(1, Node(1, Leaf 3, Node(2, Leaf 1, Leaf 2)), Leaf 2);
count_tree_list(example_tree,[]);
count_tree_list(example_tree,[1]);
count_tree_list(example_tree,[3]);
count_tree_list(example_tree,[1,3]);