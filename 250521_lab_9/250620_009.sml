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

signature STRING = sig
    type 'a stack= 'a list
    exception Empty
    val create: string stack
    val push: string -> string stack -> string stack
    val pop: string stack -> string stack
    val isEmpty: string stack -> bool
end;

structure StringStack : STRING= Stack;

val s= StringStack.create;
val s= StringStack.push "Ciao" s;
val s= StringStack.push "prova" s;
val s= StringStack.push "pippo" s;

val s=if StringStack.isEmpty s then s else StringStack.pop s;
