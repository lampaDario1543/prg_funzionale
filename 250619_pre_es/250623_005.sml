(*
Si scriva una funzione hist (avente tipo real list -> real * real -> int) che riceve come argomento una lista di real l ed una coppia di real (c, d).
La funzione hist ritorna il numero di elementi della lista compresi nell'intervallo (c - d, c + d), estremi esclusi (vale a dire il numero di elementi r tali che c - d < r < c + d).



IMPORTANTE: notare il tipo della funzione!.

La funzione hist deve essere definita in un file .sml autocontenuto ma separato da qualsiasi codice di test si sia usato.
Si consegni il file .sml contenente la definizione di hist.


*)

fun hist (nil:real list) (c,d)= 0
    |hist (x::xs) (c,d)= if x > (c - d) andalso x < (c + d) then 1 + (hist xs (c,d)) else hist xs (c,d);


hist ([1.0, 2.0, 3.0, 4.0]) (2.5, 0.5) = 0;  (* intervallo (2.0, 3.0) → 2 elementi: 2.0 e 3.0 esclusi → 0 *)
hist ([1.5, 2.4, 2.6, 3.0, 3.4]) (2.5, 0.5) = 2;  (* intervallo (2.0, 3.0) → 2.4 e 2.6 dentro → 2 *)
hist ([5.0, 10.0, 15.0]) (10.0, 5.0) = 1;  (* intervallo (5.0, 15.0) → solo 10.0 → 1 *)
hist ([]) (0.0, 1.0) = 0;  (* lista vuota → 0 *)
hist ([~1.0, 0.0, 1.0]) (0.0, 1.0) = 1;  (* intervallo (-1.0, 1.0) → solo 0.0 dentro → 1 *)