(*
Write a function duplicatep that duplicates each
element of a list using patterns.
For instance:
▪ duplicatep [1,2,3,4] =[1,1,2,2,3,3,4,4]
▪ duplicatep [2.0] =[2.0,2.0]
*)

fun duplicatep(nil)=nil
    | duplicatep(x::xs)= [x] @ [x] @ duplicatep(xs);

duplicatep([1,2,3,4]);
duplicatep([1,2,3]);
duplicatep(["a","b","c"]);