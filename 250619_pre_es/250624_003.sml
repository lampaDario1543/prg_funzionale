(*
Si scriva una funzione prefix che riceve come argomento una stringa e restituisce una lista di stringhe contenente tutti i prefissi della stringa
Es: "Ciao" -> ["Ciao","Cia","Ci,"C"] 
(no la stringa vuota)
Consiglio: nella consegna originale si consigliava di usare la funzione "map", ma questa soluzione non la usa
*)

fun prefix_aux nil = ""
    |prefix_aux (x::xs) = map 


fun prefix "" = nil
    |prefix s= prefix_aux(explode(s));