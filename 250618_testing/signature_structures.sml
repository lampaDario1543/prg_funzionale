signature STACK =
    sig
        val empty: 'a list
        val pop: 'a list -> 'a option
        val push: 'a * 'a list -> 'a list
        eqtype 'a stack
end;


structure Stack = struct
    type 'a stack = 'a list
    val empty = []
    val push = op::
    fun pop [] =NONE
        | pop (tos::rest) =SOME tos
end:> STACK;
