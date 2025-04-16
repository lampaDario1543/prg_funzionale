(*
Write expressions to
1. Open a file “zap” for reading
2. Read 5 characters from the instream in1
3. Read a line of text from the instream in1
4. Find the first character waiting on the in1, without
consuming it
5. Read the entire file from instream in1
6. Close the file whose instream is in1
*)
val in1 = TextIO.openIn ("zap");

TextIO.inputN(in1,5);
TextIO.inputLine(in1);
TextIO.lookahead(in1);
TextIO.input(in1);

TextIO.closeIn(in1);