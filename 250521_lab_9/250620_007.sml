structure Tree= struct 
    datatype ('label) tree= Node of 'label * 'label tree list;
    exception Missing
    fun create x = Node(x, nil)
    fun build (x,L) = Node(x, L)
    fun get_subtree(i, nil) = raise Missing
        | get_subtree(1,x::xs) = x
        | get_subtree(i, x::xs) = get_subtree(i-1, xs)
    fun subtree(i,Node(_,l)) = get_subtree(i,l);

end;
signature SIMPLE= sig
    exception Missing
    datatype 'label tree= Node of 'label * 'label tree list
    val build: int * int tree list -> int tree
    val subtree:int * int tree -> int tree
end;

structure simpleTree : SIMPLE = Tree;

val t=simpleTree.build(1, [simpleTree.build(2,nil),simpleTree.build(3,nil),simpleTree.build(4,nil)]);

simpleTree.subtree(2, t);