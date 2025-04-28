(*
Use map, foldr and foldl for defining the
function implode
• For instance
▪ implode[#”b”,#”c”] = “bc”
*)


fun implode(nil)=""
    |implode(l:char list) = foldr (fn(a,b) => str(a)^b) "" l; (*ricordati che l'utlimo argomento che passi nella funzione che si trova come primo aromento in foldr/l è l'argomento di default, occhio a matchare i tipi senza fare danni.*)

implode ([#"b",#"c"]);