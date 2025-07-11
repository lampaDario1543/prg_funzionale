(*
Come noto, un numero naturale e' esprimibile in base agli assiomi di Peano usando il seguente tipo di dato:

		datatype naturale = zero | successivo of naturale;

Usando tale tipo di dato, la somma fra numeri naturali e' esprimibile come:

		val rec somma = fn zero         => (fn n => n)
						| successivo a	=> (fn n => successivo (somma a n));

Scrivere una funzione Standard ML, chiamata prodotto, che ha tipo naturale -> naturale -> naturale, che calcola il prodotto di due numeri naturali (IMPORTANTE: notare il tipo della funzione!).

La funzione prodotto deve essere definita in un file .sml separato dalla definizione del tipo di dato naturale. Si consegni il file .sml contenente la definizione di prodotto.

Si noti che la funzione prodotto puo' usare la funzione somma nella sua implementazione. Non occorre ripetere la definizione di somma.
*)

datatype naturale = zero | successivo of naturale;
val rec somma = fn zero => (fn n => n)
    | successivo a	=> (fn n => successivo (somma a n));

fun prodotto (successivo a) (successivo b) = 
    |prodotto _ zero = zero
    |prodotto 