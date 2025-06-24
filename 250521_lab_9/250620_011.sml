structure Queue = struct
    type 'a queue = 'a list
    exception EmptyQueue
    val create = nil;
    fun enqueue x xs = xs @ [x]
    fun dequeue nil = raise EmptyQueue
        |dequeue (x::xs)= (x,xs)
    fun isEmpty q = q=nil
end;

signature PAIRQUEUE = sig
    type 'a queue = 'a list
    exception EmptyQueue
    val create: (string * int) queue;
    val enqueue: (string * int) -> (string * int) queue -> (string * int) queue
    val dequeue: (string * int) queue -> ((string * int) * (string * int) queue)
    val isEmpty: (string * int) queue -> bool
end;

structure pairQueue : PAIRQUEUE= Queue;

val q= pairQueue.create;
val q= pairQueue.enqueue ("prova",1) q;
val q= pairQueue.enqueue ("prova",2) q;
val q= pairQueue.enqueue ("prova",3) q;