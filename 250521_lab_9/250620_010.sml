structure Queue = struct
    type 'a queue = 'a list
    exception EmptyQueue
    val create = nil;
    fun enqueue x xs = xs @ [x]
    fun dequeue nil = raise EmptyQueue
        |dequeue (x::xs)= (x,xs)
    fun isEmpty q = q=nil
end;


val q = Queue.create;
Queue.isEmpty q;
val q = Queue.enqueue 1 q;
val q = Queue.enqueue 2 q;
val q = Queue.enqueue 3 q;
val q = Queue.enqueue 4 q;
Queue.isEmpty q;
val (first, q)= Queue.dequeue q;