let _ =
   try
     let lexbuf = Lexing.from_channel stdin in
     while true do
       let tok = Lexer.get_token lexbuf in
       print_endline (Token.show_token tok);
       flush stdout
     done
   with Lexer.Eof ->
     exit 0
