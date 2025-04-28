(*
Write a function getList(filename) that reads a file,
extracts the words (without space characters), and
transforms the file in a list of words (without space
characters).
• For instance, if the file helloworld contains
Hello beautiful world!
Bye!
getList(helloworld) = ["Hello", "beautiful", "world",
"Bye!"]
• Hint: first write a function getWord(in) that extracts a
word (without spaces) from a TextIO.instream in and
then put them in a list. You can use support functions
*)


fun getWord(in1)=
    if(TextIO.endOfStream(in1)) then "" 
    else
    let val c=TextIO.inputN(in1, 1)
    in
        if(c=" " orelse c="\n") then 
            ""
        else
            c^getWord(in1) end;

fun getList(in1)=
    if(TextIO.endOfStream(in1)) then nil
    else let val s=getWord(in1) in [s] @ getList(in1) end;

val in1 = TextIO.openIn ("zap");
getList(in1);
TextIO.closeIn(in1);