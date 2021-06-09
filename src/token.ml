type token =
  | INT of int
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | LPAREN
  | RPAREN
  | EOL
  [@@deriving show]
