/* recognize tokens for the calculator */

%option noyywrap nodefault yylineno
%{
#include "token.h"
int token;
int decimal;

%}

%%
[0-9]+  { decimal = atoi(yytext); return NUMBER; }
"+"     { return PLUS; }
"-"     { return MINUS; }
"*"     { return TIMES; }
"/"     { return DIV; }
\n      { return EOL; }
[ \t]   { /* ignora */ }
.       { return ERROR; }
%%

#include "main.c"
