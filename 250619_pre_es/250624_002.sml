(*
Si scriva una funzione prefix che riceve come argomento una stringa e restituisce una lista di stringhe contenente tutti i prefissi della stringa
Es: "Ciao" -> ["Ciao","Cia","Ci,"C"] 
(no la stringa vuota)
Consiglio: nella consegna originale si consigliava di usare la funzione "map", ma questa soluzione non la usa
*)



fun prefix_aux (nil) _= nil
    |prefix_aux (x::xs) s=
        let
            val newS= s^str(x);
        in
            prefix_aux xs newS @ 
        end;

fun prefix "" = nil
    |prefix stringa = prefix_aux (explode(stringa)) "";

prefix "ciao";