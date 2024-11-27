%{

#include "A1.tab.h"

%}


%%

"true" {return TRUE;}
"false" {return FALSE;}
"this" {return THIS;}
"new" {return NEW;}
"int" {return INT;}
"if" {return IF;}
"else" {return ELSE;} 
"while" {return WHILE;}
"boolean" {return BOOLEAN;}
"String" {return STRING;}
"class" {return CLASS;}
"public" {return PUBLIC;}
"static" {return STATIC;}
"void" {return VOID;}
"main" {return MAIN;}
"return" {return RETURN;}
"extends" {return EXTENDS;}
"length" {return LENGTH;}
"#defineExpr0" {return DEFINEX0;}
"#defineExpr1" {return DEFINEX1;}
"#defineExpr2" {return DEFINEX2;}
"#defineExpr" {return DEFINEX;}
"#defineStmt0" {return DEFINES0;}
"#defineStmt1" {return DEFINES1;}
"#defineStmt2" {return DEFINES2;}
"#defineStmt" {return DEFINES;}


"System.out.println" {return PRINT;}


[0-9]+ {int len=strlen(yytext);
	yylval.text=(char *) malloc((len+1)* sizeof(char) );
	yylval.text[0]='\0';
	strcat(yylval.text,yytext);
	return INTEGER;} 

"+" {return ADD;}
"-" {return SUB;}
"*" {return MUL;}

"//".*?[\n] {}
"/*".*?"*/" {} 


"/" {return DIV;}
"&&" {return AND;}
"||" {return OR;}
"!=" {return NE;}
"!" {return NOT;}
"<=" {return LE;}
"=" {return EQ;}

"[" {return SQUARE_LEFT;}
"]" {return SQUARE_RIGHT;}
"{" {return CURLY_LEFT;}
"}" {return CURLY_RIGHT;}
"(" {return ROUND_LEFT;}
")" {return ROUND_RIGHT;}
";" {return SEMICOLON;}
"," {return COMMA;}
"." {return DOT;}

[a-zA-Z][_a-zA-Z0-9]* {
	int len=strlen(yytext);
	yylval.text=(char *) malloc((len+1)* sizeof(char) );
	yylval.text[0]='\0';
	strcat(yylval.text,yytext);

return IDENTIFIER;}

[ ] {}
[\t] {}
[\n\r] {}
. {printf("//Failed to parse input code");}


%%

