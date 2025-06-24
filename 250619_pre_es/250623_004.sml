(*
Si scriva una funzione noduplen (avente tipo ''a list -> int) che riceve come argomento una lista di ''a l.
La funzione noduplen ritorna il numero di elementi della lista senza considerare i duplicati.

Come esempio, l'invocazione noduplen ["pera", "pera", "pera", "pera"]; deve avere risultato 1 e noduplen ["red", "red", "green", "blue"]; deve avere risultato 3.

IMPORTANTE: notare il tipo della funzione!.

La funzione noduplen deve essere definita in un file .sml autocontenuto ma separato da qualsiasi codice di test si sia usato.
Si consegni il file .sml contenente la definizione di noduplen.

*)

fun len (nil)=0
    |len ((x::xs)) = 1+ len xs;

fun is_in (el, nil) = false
    |is_in(el, (x::xs)) = 
        if el=x then true else is_in(el, xs);

fun get_no_dup (nil)=nil
    |get_no_dup((x::xs))=
        let val res = get_no_dup(xs);
        in
            if is_in (x,res) then res else x::res
        end;


fun noduplen nil = 0
    |noduplen (l:''a list) = len (get_no_dup(l));


noduplen ["pera", "pera", "pera", "pera"];
noduplen ["red", "red", "green", "blue"];
noduplen ["green","red","green","blue"];