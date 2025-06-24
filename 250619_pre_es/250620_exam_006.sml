datatype Ptree = Empty | PLeaf of int*string | PNode of int* string * Ptree * Ptree

fun count_even Empty = 0
    |count_even (PLeaf(num,_)) = if (num mod 2) = 0 then 1 else 0
    |count_even (PNode(num,_, lx, rx))=
        if (num mod 2)=0 then 1+ (count_even lx) + (count_even rx) else (count_even lx) + (count_even rx);

count_even(PNode(2,"good",PNode(3,"good",PLeaf(6,"bad"),PLeaf(7,"bad")),PNode(5,"bad",PLeaf(1,"good"),Empty)));

(* Test 1: Albero vuoto *)
val test1 = count_even(Empty);  
(* Expected: 0 *)

(* Test 2: Solo una foglia con numero pari *)
val test2 = count_even(PLeaf(4, "ciao"));
(* Expected: 1 *)

(* Test 3: Solo una foglia con numero dispari *)
val test3 = count_even(PLeaf(5, "ciao"));
(* Expected: 0 *)

(* Test 4: Nodo con numero pari e due foglie (una pari, una dispari) *)
val test4 = count_even(PNode(2, "root", PLeaf(4, "left"), PLeaf(3, "right")));
(* Expected: 2 (2 e 4) *)

(* Test 5: Nodo con numero dispari e due foglie dispari *)
val test5 = count_even(PNode(1, "root", PLeaf(3, "left"), PLeaf(5, "right")));
(* Expected: 0 *)

(* Test 6: Albero più complesso *)
val complex_tree = PNode(2, "good", 
                    PNode(3, "good", PLeaf(6,"bad"), PLeaf(7,"bad")),
                    PNode(5, "bad", PLeaf(1,"good"), Empty));

val test6 = count_even(complex_tree);
(* Expected: 2 (2 e 6) *)

(* Test 7: Tutti pari *)
val test7 = count_even(
  PNode(2, "root",
    PNode(4, "left", PLeaf(6,"a"), PLeaf(8,"b")),
    PLeaf(10, "c")
  )
);
(* Expected: 5 *)

(* Test 8: Tutti dispari *)
val test8 = count_even(
  PNode(1, "root",
    PNode(3, "left", PLeaf(5,"a"), PLeaf(7,"b")),
    PLeaf(9, "c")
  )
);
(* Expected: 0 *)