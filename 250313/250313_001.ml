(*Fix the following expressions
explode ["bar"];
implode ( #"a", #"b") ;
["r"]::["a","t"];*)
explode "bar"; (*ok*)
implode ( [#"a", #"b"]) ; (*ok*)
"r"::["a","t"];