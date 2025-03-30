(*

• Write a function vowel that takes a list of
characters and returns true if the first element is a
vowel using patterns.
• For instance
• vowel [#”a”,#”b”] = true
• vowel [#”b”,#”c”] = false
• vowel [#”a”] = true
• vowel nil = false
*)

fun vowel(nil)=false
    |vowel(#"a"::_)= true
    |vowel(#"e"::_)= true
    |vowel(#"i"::_)= true
    |vowel(#"o"::_)= true
    |vowel(#"u"::_)= true
    |vowel(#"A"::_)= true
    |vowel(#"E"::_)= true
    |vowel(#"I"::_)= true
    |vowel(#"O"::_)= true
    |vowel(#"U"::_)= true
    |vowel(_::_)= false;


vowel [#"a",#"b"] = true;
vowel [#"b",#"c"] = false;
vowel [#"a"] = true;
vowel nil = false;
