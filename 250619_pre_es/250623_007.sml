(*
Si consideri il seguente tipo di dato, che rappresenta una semplice espressione avente due argomenti x e y:

datatype Expr = X
			  | Y
			  | Avg of Expr * Expr
			  | Mul of Expr * Expr;

dove il costruttore X rappresenta il valore del primo argomento x dell'espressione,
il costruttore Y rappresenta il valore del secondo argomento y,
il costruttore Avg, che si applica ad una coppia (e1, e2), rappresenta la media (intera) dei valori di e1 ed e2,
mentre il costruttore Mul (che ancora si applica ad una coppia (e1, e2)) rappresenta il prodotto dei valori di due espressioni e1 ed e2.

Implementare una funzione Standard ML, chiamata compute, che ha tipo Expr -> int -> int -> int.

Come suggerito dal nome, compute calcola il valore dell'espressione ricevuta come primo argomento, applicandola ai valori ricevuti come secondo e terzo argomento e ritorna un intero che indica il risultato finale della valutazione.

IMPORTANTE: notare il tipo della funzione! Come si puo' intuire da tale tipo, la funzione riceve tre argomenti usando la tecnica del currying. E' importante che la funzione abbia il tipo corretto (indicato qui sopra). Una funzione avente tipo diverso da Expr -> int -> int -> int non sara' considerata corretta.

La funzione compute deve essere definita in un file .sml separato dalla definizione del tipo di dato Expr. Si consegni il file .sml contenente la definizione di compute.
*)

datatype Expr = X | Y | Avg of Expr * Expr | Mul of Expr * Expr;

fun compute X x _= x
    |compute Y _ y= y
    |compute (Avg(e1,e2)) x y= (((compute e1 x y)+ (compute e2 x y)) div 2)
    |compute (Mul(e1, e2)) x y = ((compute e1 x y)*(compute e2 x y));
    

val expr1 = X;
compute expr1 3 4 = 3;
val expr2 = Y;
compute expr2 3 4 = 4;
val expr3 = Avg(X, Y);
compute expr3 3 4 = 3;
val expr4 = Mul(X, Y);
compute expr4 3 4 = 12;
val expr5 = Mul(Avg(X, Y), Y);
compute expr5 5 2 = 6;
(* Test 6: Avg(Mul(X,Y), Y) con x=2, y=4 → Mul=8, Avg(8,4)=6 *)
val expr6 = Avg(Mul(X, Y), Y);
compute expr6 2 4 = 6;
val expr7 = Mul(Avg(Mul(X, Y), X), Avg(X, Y));
compute expr7 2 6 = 28;