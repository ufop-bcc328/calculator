Scanning
  $ echo "987654321 + 2" | calculator
  (Token.INT 987654321)
  Token.PLUS
  (Token.INT 2)
  Token.EOL

  $ calculator <<EOF
  > 23 + 45
  > 74854 / (2+1)
  > EOF
  (Token.INT 23)
  Token.PLUS
  (Token.INT 45)
  Token.EOL
  (Token.INT 74854)
  Token.DIV
  Token.LPAREN
  (Token.INT 2)
  Token.PLUS
  (Token.INT 1)
  Token.RPAREN
  Token.EOL
