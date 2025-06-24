type ('a,'b) articolo_prezzo = ('a * 'b) list;



datatype 'label btree = Empty | Node of 'label * 'label btree * 'label btree;



val articles:(string, int) articolo_prezzo = [("pencil",5),("pen",2)];

datatype ('a,'b) element = P of 'a * 'b | S of 'a;

fun sumElList (nil) = 0
| sumElList (S(x)::L) = sumElList (L)
| sumElList (P(x,y)::L) = y + sumElList (L);

sumElList [ P("in",6), S("function"), P("as",2)];