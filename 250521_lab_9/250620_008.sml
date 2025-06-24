structure Stack = struct
    type 'a stack= 'a list
    exception Empty
    val create = nil
    fun push x l= x :: l
    fun pop nil = raise Empty
        |pop (x::xs) = xs
    fun isEmpty s= s=nil
    fun top nil = raise Empty
        |top (x::xs) = x
end;

val s= Stack.create;
val s= Stack.push 1 s;
val s= Stack.push 2 s;
val s= Stack.push 3 s;
val s= Stack.push 4 s;
Stack.isEmpty s;
val s= Stack.pop s;
Stack.top s;