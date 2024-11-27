%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
//#define YYDEBUG 1


char* macro_map[1000][2];
int macro_arg_count[1000];
char* macro_args[1000][100];
int macro_count=0;


char* replace(char * str1, char * str2, char * str3)
{
	char * result=(char *) malloc(100000* sizeof(char));
	result[0]='\0';
	int i=0;
	while(i<strlen(str1))
	{
		int flag=0;
		for(int j=i;j<i+strlen(str2);j++)
		{
			if(str1[j]!=str2[j-i])
			{
				flag=1;
				break;
			}
		}
		if(flag==0)
		{
			if(isalnum(str1[i+strlen(str2)]))
			{
				flag=1;
			}
			
			if(i!=0 && isalnum(str1[i-1]))
			{
				flag=1;
			}
		}
		if(flag==0)
		{
			strcat(result,str3);
			i+=strlen(str2);
		}
		else
		{
			int len=strlen(result);
			result[len]=str1[i];
			result[len+1]='\0';
			i++;	
		}
	}
	return result;
} 




%}


%union{
	char * text;
	
	struct {
		
		char * text;
		int count;
		char * list[100];
	
	}comma_str;
	
}

%token TRUE FALSE THIS NEW INT IF ELSE WHILE BOOLEAN STRING
%token CLASS PUBLIC STATIC VOID MAIN RETURN EXTENDS LENGTH 
%token DEFINEX DEFINEX0 DEFINEX1 DEFINEX2 DEFINES DEFINES0 DEFINES1 DEFINES2 
%token INTEGER IDENTIFIER 
%token ADD SUB MUL DIV AND OR NOT NE LE EQ
%token SQUARE_LEFT SQUARE_RIGHT CURLY_LEFT CURLY_RIGHT ROUND_LEFT ROUND_RIGHT SEMICOLON COMMA DOT
%token PRINT

%type<text> INTEGER IDENTIFIER Goal Multi_Macro_Definition Multi_Type_Declaration Type_Identifier Multi_Type_Identifier
%type<text> Multi_Comma_Type_Identifier Multi_Method_Declaration Multi_Statement
%type<text> Main_Class Type_Declaration Method_Declaration Statement Type Expression Primary_Expression Macro_Definition Macro_Def_Statement Macro_Def_Expression
%type<text> True False This New Int If Else While Boolean String
%type<text> Class Public Static Void Main Return Extends Length Definex0 Definex1 Definex2 Definex Defines0 Defines1 Defines2 Defines  
%type<text> Add Sub Mul Div And Or Not Ne Le Eq
%type<text> Square_Left Square_Right Curly_Left Curly_Right Round_Left Round_Right Semicolon Comma Dot
%type<text> Print
%type<text> Identifier Integer
%type<comma_str> Multi_Comma_Identifier Multi_Comma_Expression

%%
Final: %empty
	| Final Goal {printf("%s",$2);}
	
Goal: Multi_Macro_Definition Main_Class Multi_Type_Declaration  
{char * temp=(char *) malloc(1000000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp,"\n\n");
	strcat(temp,$2);strcat(temp,"\n\n");
	strcat(temp,$3);strcat(temp,"\n\n");
	$$=temp;
	}	

Multi_Macro_Definition: %empty {$$="";}
	| Macro_Definition Multi_Macro_Definition
	{$$="";
	}
	
	
Multi_Type_Declaration: %empty {$$="";}
	| Type_Declaration Multi_Type_Declaration	
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);
	$$=temp;
	free($1);free($2);
	}



Type_Identifier: Type Identifier Semicolon
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);strcat(temp,"\n");
	$$=temp;
	free($1);free($2);free($3);
} 

Multi_Type_Identifier: %empty {$$="";}
	| Multi_Type_Identifier Type_Identifier 
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);
	$$=temp;
	free($1);free($2);
	}

Multi_Comma_Type_Identifier: Type Identifier
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);
	$$=temp;
	free($1);free($2);
	}
	
	| Multi_Comma_Type_Identifier Comma Type Identifier
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);strcat(temp," ");
	strcat(temp,$4);
	$$=temp;
	free($1);free($2);free($3);free($4);
	}

Multi_Comma_Identifier: Identifier{$$.text=$1;$$.list[0]=$1;$$.count=1;}
	| Multi_Comma_Identifier Comma Identifier
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1.text);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$.text=temp;
	for(int i=0;i<$1.count;i++)
	{$$.list[i]=$1.list[i];}
	$$.list[$1.count]=$3;
	$$.count=$1.count+1;
	free($1.text);free($2);free($3);
	}


Multi_Comma_Expression: Expression{$$.text=$1;$$.list[0]=$1;$$.count=1;}
	| Multi_Comma_Expression Comma Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1.text);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$.text=temp;
	for(int i=0;i<$1.count;i++)
	{$$.list[i]=$1.list[i];}
	$$.list[$1.count]=$3;
	$$.count=$1.count+1;
	free($1.text);free($2);free($3);
	}

Multi_Method_Declaration: %empty {$$="";}
	| Method_Declaration Multi_Method_Declaration
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp,"\n");
	strcat(temp,$2);
	$$=temp;
	free($1);free($2);
	}

Multi_Statement: %empty {$$="";}
	| Statement Multi_Statement 
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp,"\n");
	strcat(temp,$2);
	$$=temp;
	free($1);free($2);
	}



Main_Class: Class Identifier Curly_Left Public Static Void Main Round_Left String Square_Left Square_Right Identifier Round_Right Curly_Left Print Round_Left Expression Round_Right Semicolon Curly_Right Curly_Right
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);strcat(temp,"\n");
	strcat(temp,$4);strcat(temp," ");
	strcat(temp,$5);strcat(temp," ");
	strcat(temp,$6);strcat(temp," ");
	strcat(temp,$7);
	strcat(temp,$8);
	strcat(temp,$9);
	strcat(temp,$10);
	strcat(temp,$11);strcat(temp," ");
	strcat(temp,$12);
	strcat(temp,$13);
	strcat(temp,$14);strcat(temp,"\n");
	strcat(temp,$15);
	strcat(temp,$16);
	strcat(temp,$17);
	strcat(temp,$18);strcat(temp," ");
	strcat(temp,$19);strcat(temp,"\n");
	strcat(temp,$20);
	strcat(temp,$21);strcat(temp,"\n");
	$$=temp;
	free($1);free($2);free($3);free($4);free($5);free($6);free($7);free($8);free($9);free($10);free($11);free($12);free($13);free($14);free($15);free($16);free($17);free($18);free($19);free($20);free($21);
}

Type_Declaration: Class Identifier Curly_Left Multi_Type_Identifier Multi_Method_Declaration Curly_Right
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);strcat(temp,"\n");
	strcat(temp,$4);strcat(temp,"\n");
	strcat(temp,$5);strcat(temp,"\n");
	strcat(temp,$6);strcat(temp,"\n");
	$$=temp;
	free($1);free($2);free($3);free($4);free($5);free($6);
}
	| Class Identifier Extends Identifier Curly_Left Multi_Type_Identifier Multi_Method_Declaration Curly_Right
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);strcat(temp," ");
	strcat(temp,$4);strcat(temp," ");
	strcat(temp,$5);strcat(temp,"\n");
	strcat(temp,$6);strcat(temp,"\n");
	strcat(temp,$7);strcat(temp,"\n");
	strcat(temp,$8);strcat(temp,"\n");
	$$=temp;
	free($1);free($2);free($3);free($4);free($5);free($6);free($7);free($8);
}

Method_Declaration: Public Type Identifier Round_Left Round_Right Curly_Left Multi_Type_Identifier Multi_Statement Return Expression Semicolon Curly_Right
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	strcat(temp,$4);
	strcat(temp,$5);strcat(temp," ");
	strcat(temp,$6);strcat(temp,"\n");
	strcat(temp,$7);strcat(temp,"\n");
	strcat(temp,$8);strcat(temp,"\n");
	strcat(temp,$9);strcat(temp," ");
	strcat(temp,$10);strcat(temp," ");
	strcat(temp,$11);strcat(temp,"\n");
	strcat(temp,$12);strcat(temp,"\n");
	$$=temp;
	free($1);free($2);free($3);free($4);free($5);free($6);free($7);free($8);free($9);free($10);free($11);free($12);
}

	| Public Type Identifier Round_Left Multi_Comma_Type_Identifier Round_Right Curly_Left Multi_Type_Identifier Multi_Statement Return Expression Semicolon Curly_Right
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	strcat(temp,$4);
	strcat(temp,$5);
	strcat(temp,$6);strcat(temp," ");
	strcat(temp,$7);strcat(temp,"\n");
	strcat(temp,$8);strcat(temp,"\n");
	strcat(temp,$9);strcat(temp,"\n");
	strcat(temp,$10);strcat(temp," ");
	strcat(temp,$11);strcat(temp," ");
	strcat(temp,$12);strcat(temp,"\n");
	strcat(temp,$13);strcat(temp,"\n");
	$$=temp;
	free($1);free($2);free($3);free($4);free($5);free($6);free($7);free($8);free($9);free($10);free($11);free($12);free($13);
}


Statement: Curly_Left Multi_Statement Curly_Right
			{char * temp=(char *) malloc(100000* sizeof(char));
			temp[0]='\0';
			strcat(temp,$1);strcat(temp,"\n");
			strcat(temp,$2);strcat(temp,"\n");
			strcat(temp,$3);strcat(temp,"\n");
			$$=temp;
			free($1);free($2);free($3);
			}		

	| Print Round_Left Expression Round_Right Semicolon
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);strcat(temp," ");
	strcat(temp,$5);strcat(temp,"\n");
	$$=temp;
	free($1);free($2);free($3);free($4);free($5);
	}
	
	| Identifier Eq Expression Semicolon
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);strcat(temp," ");
	strcat(temp,$4);strcat(temp,"\n");
	$$=temp;
	free($1);free($2);free($3);free($4);	
	}
	
	| Identifier Square_Left Expression Square_Right Eq Expression Semicolon
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);strcat(temp," ");
	strcat(temp,$5);strcat(temp," ");
	strcat(temp,$6);strcat(temp," ");
	strcat(temp,$7);strcat(temp,"\n");
	free($1);free($2);free($3);free($4);free($5);free($6);free($7);
	$$=temp;
	}
	
	| If Round_Left Expression Round_Right Statement
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);strcat(temp,"\n");
	strcat(temp,$5);strcat(temp,"\n");
	$$=temp;
	}
	
	| If Round_Left Expression Round_Right Statement Else Statement
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);strcat(temp,"\n");
	strcat(temp,$5);
	strcat(temp,$6);strcat(temp,"\n");
	strcat(temp,$7);strcat(temp,"\n");
	$$=temp;
	}
	
	| While Round_Left Expression Round_Right Statement
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);strcat(temp,"\n");
	strcat(temp,$5);strcat(temp,"\n");
	$$=temp;
	}
	
	| Identifier Round_Left Round_Right Semicolon
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	
	
	int i=0;
	for(i=0;i<macro_count;i++)
	{
		if(strcmp(macro_map[i][0],$1)==0)
		{
			break;
		}
	}
	
	if(macro_arg_count[i]!=0)
	{
		printf("//Failed to parse input code");
		YYABORT;
	}
	
	strcat(temp,macro_map[i][1]);
	$$=temp;
	}
	
	| Identifier Round_Left Multi_Comma_Expression Round_Right Semicolon
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	
	
	int i=0;
	for(i=0;i<macro_count;i++)
	{
		if(strcmp(macro_map[i][0],$1)==0)
		{
			break;
		}
	}
	
	if(macro_arg_count[i]!=$3.count)
	{
		printf("//Failed to parse input code");
		YYABORT;
	}
	
	strcat(temp,macro_map[i][1]);
	for(int j=0;j<$3.count;j++)
	{
		temp=replace(temp,macro_args[i][j],$3.list[j]);
	}
	
	
	$$=temp;	
	
	}


Type: Int Square_Left Square_Right
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	$$=temp;
	}
	 
	| Boolean{$$=$1;}
	
	| Int {$$=$1;}
	
	| Identifier{$$=$1;}
	


Expression: Primary_Expression And Primary_Expression
			{char * temp=(char *) malloc(100000* sizeof(char));
			temp[0]='\0';
			strcat(temp,$1);strcat(temp," ");
			strcat(temp,$2);strcat(temp," ");
			strcat(temp,$3);
			$$=temp;
			}
			
	| Primary_Expression Or Primary_Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$=temp;
	}
	
	| Primary_Expression Ne Primary_Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$=temp;
	}
	
	| Primary_Expression Le Primary_Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$=temp;
	}
	
	| Primary_Expression Add Primary_Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$=temp;
	}
	
	| Primary_Expression Sub Primary_Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$=temp;
	}
	
	| Primary_Expression Mul Primary_Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$=temp;
	}
	
	| Primary_Expression Div Primary_Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	$$=temp;
	}
	
	| Primary_Expression Square_Left Primary_Expression Square_Right
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);
	$$=temp;
	}
	
	| Primary_Expression Dot Length
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	$$=temp;
	}
	| Primary_Expression
	{$$=$1;}
	 
	| Primary_Expression Dot Identifier Round_Left Round_Right 
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);
	strcat(temp,$5);
	$$=temp;
	}
	
	| Primary_Expression Dot Identifier Round_Left Multi_Comma_Expression Round_Right
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);
	strcat(temp,$5.text);
	strcat(temp,$6);
	$$=temp;
	}
	
	| Identifier Round_Left Round_Right
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	
	int i=0;
	for(i=0;i<macro_count;i++)
	{
		if(strcmp(macro_map[i][0],$1)==0)
		{
			break;
		}
	}
	
	if(macro_arg_count[i]!=0)
	{
		printf("//Failed to parse input code");
		YYABORT;
	}
	
	strcat(temp,macro_map[i][1]);
	$$=temp;
	}
	 
	| Identifier Round_Left Multi_Comma_Expression Round_Right 
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	
	int i=0;
	for(i=0;i<macro_count;i++)
	{
		if(strcmp(macro_map[i][0],$1)==0)
		{
			break ;
		}
	}
	
	if(macro_arg_count[i]!=$3.count)
	{
		printf("//Failed to parse input code");
		YYABORT;
	}
	
	strcat(temp,macro_map[i][1]);
	
	for(int j=0;j<$3.count;j++)
	{
		temp=replace(temp,macro_args[i][j],$3.list[j]);
	}
	
	$$=temp;
	}
	
Primary_Expression: Integer {$$=$1;}
	| True {$$=$1;}
	
	| False {$$=$1;}
	
	| Identifier {$$=$1;}
	
	| This {$$=$1;}
	
	| New Int Square_Left Expression Square_Right 
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);strcat(temp," ");
	strcat(temp,$3);
	strcat(temp,$4);
	strcat(temp,$5);
	$$=temp;
	}
	
	| New Identifier Round_Left Round_Right
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);strcat(temp," ");
	strcat(temp,$2);
	strcat(temp,$3);
	strcat(temp,$4);
	$$=temp;
	}
	
	| Not Expression
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	$$=temp;
	}
	
	| Round_Left Expression Round_Right
	{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,$1);
	strcat(temp,$2);
	strcat(temp,$3);
	$$=temp;
	}

Macro_Definition: Macro_Def_Expression
	| Macro_Def_Statement
	
	
Macro_Def_Statement: Defines0 Identifier Round_Left Round_Right Curly_Left Multi_Statement Curly_Right
	{
		$$="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$2);
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=0;
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$6);
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
	
	| Defines1 Identifier Round_Left Identifier Round_Right Curly_Left Multi_Statement Curly_Right	
	{
		$$="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$2);
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=1;
		macro_args[macro_count][0]=$4;
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$7);
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}

	| Defines2 Identifier Round_Left Identifier Comma Identifier Round_Right Curly_Left Multi_Statement Curly_Right
	{
		$$="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$2);		
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=2;
		macro_args[macro_count][0]=$4;
		macro_args[macro_count][1]=$6;
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$9);
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}

	| Defines Identifier Round_Left Identifier Comma Identifier Comma Multi_Comma_Identifier Round_Right Curly_Left Multi_Statement Curly_Right
	{
		$$="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$2);
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=2+$8.count;
		macro_args[macro_count][0]=$4;
		macro_args[macro_count][1]=$6;
		for(int i=0;i<$8.count;i++)
		{
			macro_args[macro_count][i+2]=$8.list[i];
		}
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$11);
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}

Macro_Def_Expression: Definex0 Identifier Round_Left Round_Right Round_Left Expression Round_Right
	{
		$$="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$2);
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=0;
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$5);strcat(temp,$6);strcat(temp,$7);
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
	
	| Definex1 Identifier Round_Left Identifier Round_Right Round_Left Expression Round_Right	
	{
		$$="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$2);
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=1;
		macro_args[macro_count][0]=$4;
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$6);strcat(temp,$7);strcat(temp,$8);
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}

	| Definex2 Identifier Round_Left Identifier Comma Identifier Round_Right Round_Left Expression Round_Right
	{
		$$="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$2);		
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=2;
		macro_args[macro_count][0]=$4;
		macro_args[macro_count][1]=$6;
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$8);strcat(temp,$9);strcat(temp,$10);
		
		macro_map[macro_count][1]=temp;
		macro_count++;

	}

	| Definex Identifier Round_Left Identifier Comma Identifier Comma Multi_Comma_Identifier Round_Right Round_Left Expression Round_Right
	{
		$$="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$2);
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=2+$8.count;
		macro_args[macro_count][0]=$4;
		macro_args[macro_count][1]=$6;
		for(int i=0;i<$8.count;i++)
		{
			macro_args[macro_count][i+2]=$8.list[i];
		}
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,$10);strcat(temp,$11);strcat(temp,$12);
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}

Identifier: IDENTIFIER {$$=$1;}
Integer: INTEGER {$$=$1;}
Add: ADD {$$="+";}
Sub: SUB {$$="-";}
Mul: MUL {$$="*";}
Div: DIV {$$="/";}
And: AND {$$="&&";}
Or: OR {$$="||";}
Not: NOT {$$="!";}
Ne: NE {$$="!=";}
Eq: EQ {$$="=";}
Le: LE {$$="<=";}
Square_Left: SQUARE_LEFT {$$="[";} 
Square_Right: SQUARE_RIGHT {$$="]";}
Curly_Left: CURLY_LEFT {$$="{";}
Curly_Right: CURLY_RIGHT {$$="}";}
Round_Left: ROUND_LEFT {$$="(";}
Round_Right: ROUND_RIGHT {$$=")";}
Semicolon: SEMICOLON {$$=";";}
Comma: COMMA {$$=",";}
Dot: DOT{$$=".";}
Print: PRINT {$$="System.out.println";}

True: TRUE {$$="true";}
False: FALSE {$$="false";}
This: THIS {$$="this";}
New: NEW {$$="new";}
Int: INT {$$="int";}
If: IF {$$="if";}
Else: ELSE {$$="else";}
While: WHILE {$$="while";}
Boolean: BOOLEAN {$$="boolean";}
String: STRING {$$="String";}
Class: CLASS {$$="class";}
Public: PUBLIC {$$="public";}
Static: STATIC {$$="static";}
Void: VOID {$$="void";}
Main: MAIN {$$="main";}
Return: RETURN {$$="return";}
Extends: EXTENDS {$$="extends";}
Length: LENGTH {$$="length";}
Definex0: DEFINEX0 {$$="#defineExpr0";}
Definex1: DEFINEX1 {$$="#defineExpr1";}
Definex2: DEFINEX2 {$$="#defineExpr2";}
Definex: DEFINEX {$$="#defineExpr";}
Defines0: DEFINES0 {$$="#defineStmt0";}
Defines1: DEFINES1 {$$="#defineStmt1";}
Defines2: DEFINES2 {$$="#defineStmt2";}
Defines: DEFINES {$$="#defineStmt";}
	
%%

int main(int argc, char * argv[])

{
	//yydebug=1;
	yyparse();
	
	/*
	for(int i=0;i<macro_count;i++)
	{
		printf("%s %s\n",macro_map[i][0],macro_map[i][1]);
	}
*/	
}

yyerror(char* a)
{
	printf("//Failed to parse input code");
}


