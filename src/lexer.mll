{
open Token        (* The type token is defined in token.ml *)
exception Eof
}

let spaces = [' ' '\t']

rule get_token = parse
  | spaces            { get_token lexbuf }     (* skip blanks *)
  | ['\n' ]           { EOL }
  | ['0'-'9']+ as lxm { INT (int_of_string lxm) }
  | '+'               { PLUS }
  | '-'               { MINUS }
  | '*'               { TIMES }
  | '/'               { DIV }
  | '('               { LPAREN }
  | ')'               { RPAREN }
  | eof               { raise Eof }
