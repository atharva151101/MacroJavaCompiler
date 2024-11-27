




%%

"true" {printf("TRUE");}//return TRUE;}
"false" {printf("FALSE");}//return FALSE;}
"this" {printf("THIS");}//return THIS;}
"new" {printf("NEW");}//return NEW;}
"int" {printf("INT");}//return INT;}
"if" {printf("IF");}//return IF;}
"else" {printf("ELSE");}//return ELSE;} 
"while" {printf("WHILE");}//return WHILE;}
"boolean" {printf("BOOLEAN");}//return BOOLEAN;}
"String" {printf("STRING");}//return STRING;}
"class" {printf("CLASS");}//return CLASS;}
"public" {printf("PUBLIC");}//return PUBLIC;}
"static" {printf("STATIC");}//return STATIC;}
"void" {printf("VOID");}//return VOID;}
"main" {printf("MAIN");}//return MAIN;}
"return" {printf("RETURN");}//return RETURN;}
"extends" {printf("EXTENDS");}//return EXTENDS;}
"length" {printf("LENGTH");}//return LENGTH;}
"#defineExpr0" {printf("DEFINE");}//return DEFINE;}
"System.out.println" {printf("PRINT");}//return PRINT;}


[0-9]+ {printf("INTEGER");}//return INTEGER;} 
<<EOF>> {printf("EOF");return 0;}//return EOF;}

"+" {printf("ADD");}//return ADD;}
"-" {printf("SUB");}//return SUB;}
"*" {printf("MUL");}//return MUL;}
"/" {printf("DIV");}//return DIV;}
"&&" {printf("AND");}//return AND;}
"||" {printf("OR");}//return OR;}
"!=" {printf("NE");}//return NE;}
"!" {printf("NOT");}//return NOT;}
"<=" {printf("LE");}//return LE;}
"=" {printf("EQ");}//return EQ;}

"[" {printf("SQUARE_LEFT");}//return SQUARE_LEFT;}
"]" {printf("SQUARE_RIGHT");}//return SQUARE_RIGHT;}
"{" {printf("CURLY_LEFT");}//return CURLY_LEFT;}
"}" {printf("CURLY_RIGHT");}//return CURLY_RIGHT;}
"(" {printf("ROUND_LEFT");}//return ROUND_LEFT;}
")" {printf("ROUND_RIGHT");}//return ROUND_RIGHT;}
";" {printf("SEMICOLON");}//return SEMICOLON;}
"," {printf("COMMA");}//return COMMA;}
"." {printf("DOT");}//return DOT;}

[a-zA-Z][_a-zA-Z0-9]* {printf("IDENTIFIER");}//return IDENTIFIER;}

[ ] {printf(" ");}
[\t] {printf("\t");}
[\n] {printf("\n");}
. {printf("ERROR");}


%%

int main(int argc, char * argv[])
{
		yyin=fopen(argv[1],"r");
		yylex();
		fclose(yyin);
}


