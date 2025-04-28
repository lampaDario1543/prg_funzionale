(*
Use map, foldr and foldl for turning a list of
integers into a list of reals with the same values
• For instance
▪ toReal ([1,2,3])= [1.0, 2.0, 3.0]
*)


fun toReal(nil) = nil
    | toReal(l: int list)= map real l;

toReal ([1,2,3]);