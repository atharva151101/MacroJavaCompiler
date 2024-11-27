/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_A1_TAB_H_INCLUDED
# define YY_YY_A1_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    TRUE = 258,
    FALSE = 259,
    THIS = 260,
    NEW = 261,
    INT = 262,
    IF = 263,
    ELSE = 264,
    WHILE = 265,
    BOOLEAN = 266,
    STRING = 267,
    CLASS = 268,
    PUBLIC = 269,
    STATIC = 270,
    VOID = 271,
    MAIN = 272,
    RETURN = 273,
    EXTENDS = 274,
    LENGTH = 275,
    DEFINEX = 276,
    DEFINEX0 = 277,
    DEFINEX1 = 278,
    DEFINEX2 = 279,
    DEFINES = 280,
    DEFINES0 = 281,
    DEFINES1 = 282,
    DEFINES2 = 283,
    INTEGER = 284,
    IDENTIFIER = 285,
    ADD = 286,
    SUB = 287,
    MUL = 288,
    DIV = 289,
    AND = 290,
    OR = 291,
    NOT = 292,
    NE = 293,
    LE = 294,
    EQ = 295,
    SQUARE_LEFT = 296,
    SQUARE_RIGHT = 297,
    CURLY_LEFT = 298,
    CURLY_RIGHT = 299,
    ROUND_LEFT = 300,
    ROUND_RIGHT = 301,
    SEMICOLON = 302,
    COMMA = 303,
    DOT = 304,
    PRINT = 305
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 65 "A1.y"

	char * text;
	
	struct {
		
		char * text;
		int count;
		char * list[100];
	
	}comma_str;
	

#line 121 "A1.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_A1_TAB_H_INCLUDED  */
