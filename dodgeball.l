STARTGAME (STARTGAME)([^a-zA-Z0-9])
ENDGAME (ENDGAME)([^a-zA-Z0-9])
PRINT PRINT:
STRENGTH \([0-9]\)
HEALTH [0-9]+[h]
BALLSPEED \([0-9]\.?[0-9]\)
TEAM A|B
TIMESCORE [0-9]+[S]
GAMERESULT WIN|LOST|DRAW
ACTION THROWING|ESCAPING|CATCHING
ROLE THROWER|ESCAPER
SCANNER SCANNER:([^a-zA-Z0-9])
STRING  \".*\"
CHILDREN [A-Z]+
IDENTIFIER [a-z]
KEY (CREATE|DIE)([^a-zA-Z0-9])
ASSIGNMENT =
AND &&
OR ||
INTEGER [0-9]+
PLUS [+]
MINUS [-]
DIVIDE [/]
IF [^a-zA-Z0-9]IF[^a-zA-Z0-9]
ELSE [^a-zA-Z0-9]ELSE[^a-zA-Z0-9]
ELSEIF [^a-zA-Z0-9]ELSEIF[^a-zA-Z0-9]
WHILE [^a-zA-Z0-9]WHILE[^a-zA-Z0-9]
EQ ==
BE >=
SE <=
B >
S <
COMMENT [^a-zA-Z0-9]([//].+[//])[^a-zA-Z0-9]
SEMICOLON ;
CHANGE (CHANGE)([^a-zA-Z0-9])

%%
{STRENGTH} {printf(" STRENGTH ");}
{HEALTH} {printf(" HEALTH ");}
{STRING} {printf(" STRING ");}
{PRINT} {printf(" PRINT ");}
{SCANNER} {printf(" SCANNER ");}
{BALLSPEED} {printf(" BALLSPEED ");}
{TEAM} {printf(" TEAM ");}
{TIMESCORE} {printf(" TIMESCORE ");}
{GAMERESULT} {printf(" GAMERESULT ");}
{ACTION} {printf(" ACTION ");}
{ROLE} {printf(" ROLE ");}
{CHILDREN} {printf(" CHILDREN ");}
{KEY} {printf(" KEY ");}
{ASSIGNMENT} {printf(" ASSIGNED ");}
{AND} {printf(" AND ");}
{PLUS} {printf(" PLUS ");}
{DIVIDE} {printf(" DIVIDE ");}
{MINUS} {printf(" MINUS ");}
{INTEGER} {printf(" INTEGER ");}
{WHILE} {printf(" WHILE ");}
{IF} {printf(" IF ");}
{ELSE} {printf(" ELSE ");}
{ELSEIF} {printf(" ELSEIF ");}
{EQ} {printf(" EQ ");}
{BE} {printf(" BE ");}
{SE} {printf(" SE ");}
{B} {printf(" B ");}
{S} {printf(" S ");}
{COMMENT} {printf(" COMMENT ");}
{SEMICOLON} {printf(" SEMICOLON ");}
{IDENTIFIER} {printf(" IDENTIFIER ");}
{STARTGAME} {printf(" START GAME ");}
{ENDGAME} {printf(" END GAME ");}
{CHANGE} {printf(" CHANGE ");}
%%


main()
{
yylex();
}
