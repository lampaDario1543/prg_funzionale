(*
Given the type (‘
a,
’b) mapTree, write a function assign lt
T a b that looks in mapTree T for a pair (a, c), and, if
found, replaces c by b
• If no such pair is found, assign inserts the pair (a, b) in
the appropriate place in the tree
*)

(*Special thanks to ML for dummies.*)

datatype 'a btree = Empty | Node of 'a * 'a btree * 'a btree;
type ('a, 'b) mapTree = ('a * 'b) btree;


fun assign lt Empty a b = Node((a,b),Empty, Empty)
    |assign lt (Node((c,d),left, right)) a b =
        if(lt (a,c)) then
            Node((c,d),assign lt left a b, right)
        else if (lt (c,a)) then
            Node((c,d),left,assign lt right a b)
        else Node((a,b), left, right);

(*GPT made this function:*)
fun printTree Empty = ()
  | printTree (Node ((k, v), l, r)) = (
      printTree l;
      print (Int.toString k ^ " -> " ^ v ^ "\n");
      printTree r
    );

val lt = fn (a,b) => a<b;


(*GPT made testing code:*)
val t0 = Node ((5, "cinque"),
          Node ((3, "tre"), Empty, Empty),
          Node ((7, "sette"), Empty, Empty));

val t1 = assign lt t0 6 "sei";
val t2 = assign lt t1 3 "three";
val _ = printTree t2;