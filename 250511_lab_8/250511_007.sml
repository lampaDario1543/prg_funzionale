(*
Given the following type for trees:
datatype 'a T = Lf | Br of 'a * 'a T * 'a T
Define a signature TREE with the following operations besides
the datatype 'a T = Lf | Br of 'a * 'a T * 'a T
▪ Count the number of nodes in a tree (countNodes)
▪ Find the depth of a tree (depth)
▪ Find the mirror image of a tree (mirror). The mirror image of
a tree is a tree in which the right and left subtrees are
swapped, e.g.,
o mirror Br(3, Br(2,Lf,Lf), Br(5,Br(4,Lf,Lf),Lf) = Br
(3, Br(4, Lf, Br(4,Lf,Lf)),Br(2,Lf,Lf))
*)

signature TREE = sig
    datatype 'a T = Lf | Br of 'a * 'a T * 'a T
    val countNodes: 'a T -> int
    val depth: 'a T -> int
    val mirror: 'a T -> 'a T
end;