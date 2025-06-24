(*
Write a function called sum_binary (of type int list * int list -> int
list) that takes as input a pair of lists of integers, which represent a number in
binary form, and returns the binary number that represents the sum of the two
input numbers, also as an int list of 1s and 0s.
• The use of the "+" operator is not permitted within the program, but only
logical operators such as "andalso", "orelse" and the comparison operator
"=".
• For example
sum_binary([],[]) = []
sum_binary([1,0],[1,0]) = [1,0,0]
sum_binary([1,0],[0]) = [1,0]
sum_binary([0],[1,0]) = [1,0]
sum_binary([1,0,0,0],[1,0]) = [1,0,1,0]
sum_binary([1,0,1,1],[1,1,1]) = [1,0,0,1,0]
*)

fun evaluate(num1, num2, carry)=
    let 
        val newNum1= if num1=1 then true else false
        val newNum2= if num2=1 then true else false
    in
        if newNum1 andalso newNum2 andalso carry 
            then (1, true)
            else if newNum1 andalso newNum2 
                then (0,true)
                else if newNum1 orelse newNum2
                    then if carry then (0, true) else (1, false)
                    else if carry then (1, false) else (0, false)
    end;

fun reverse_list (nil)=nil
    |reverse_list (x::xs) = reverse_list(xs) @ [x];

fun sum_binary_aux(nil, nil, carry)= if carry then [1] else nil
    |sum_binary_aux(first as (st::sts), nil, carry)= 
    if carry then
        let
            val (res, newCarry) = evaluate (st, 1, false)
            val newNewCarry= if newCarry then 1 else 0
        in
            sum_binary_aux(sts, [newNewCarry], false) @ [res]
        end
     else reverse_list(first)
    |sum_binary_aux(nil, second as nd::nds, carry)= if carry then
        let
            val (res, newCarry) = evaluate (nd, 1, false)
            val newNewCarry= if newCarry then 1 else 0
        in
            sum_binary_aux(nds, [newNewCarry], false) @ [res]
        end
     else reverse_list(second)
    |sum_binary_aux((st::sts), (nd::nds), carry) =
        let
            val (res, newCarry) = evaluate (st, nd, carry)
        in
            sum_binary_aux(sts, nds, newCarry) @ [res]
        end;


fun sum_binary(nil, nil)= nil
    |sum_binary(nil, res)=res
    |sum_binary(res, nil)=res
    |sum_binary(first, second) = sum_binary_aux(reverse_list(first), reverse_list(second), false);


sum_binary([],[]);
sum_binary([1,0],[1,0]);
sum_binary([1,0],[0]);
sum_binary([0],[1,0]);
sum_binary([1,0,0,0],[1,0]);
sum_binary([1,0,1,1],[1,1,1]);

(* Somma di due numeri uguali: 10 + 10 = 100 *)
sum_binary([1, 0], [1, 0]);     (* => [1, 0, 0] *)

(* Somma di [1,0] + [0] = 10 + 0 = 10 *)
sum_binary([1, 0], [0]);        (* => [1, 0] *)

(* Somma di [0] + [1,0] = 0 + 10 = 10 *)
sum_binary([0], [1, 0]);        (* => [1, 0] *)

(* Somma di 1000 (8) + 10 (2) = 1010 (10) *)
sum_binary([1,0,0,0], [1,0]);   (* => [1,0,1,0] *)

(* Somma di 1011 (11) + 111 (7) = 10010 (18) *)
sum_binary([1,0,1,1], [1,1,1]); (* => [1,0,0,1,0] *)

(* Somma di [1,1,1,1] (15) + [1] = 16 => 10000 *)
sum_binary([1,1,1,1], [1]);     (* => [1,0,0,0,0] *)

(* Somma di [1] + [1] = [1,0] *)
sum_binary([1], [1]);           (* => [1,0] *)

(* Somma di [1,0,1] + [] = [1,0,1] *)
sum_binary([1,0,1], []);        (* => [1,0,1] *)

(* Somma di [1,0,0,1] (9) + [1,1,1,1] (15) = [1,0,0,0,0] (24) *)
sum_binary([1,0,0,1], [1,1,1,1]); (* => [1,1,0,0,0] *)
