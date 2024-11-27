/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.5.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "A1.y"

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





#line 133 "A1.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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
	

#line 249 "A1.tab.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_A1_TAB_H_INCLUDED  */



#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))

/* Stored state numbers (used for stacks). */
typedef yytype_int16 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  2
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   401

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  51
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  70
/* YYNRULES -- Number of rules.  */
#define YYNRULES  121
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  300

#define YYUNDEFTOK  2
#define YYMAXUTOK   305


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    98,    98,    99,   101,   110,   111,   116,   117,   127,
     136,   137,   145,   153,   163,   164,   178,   179,   192,   193,
     201,   202,   212,   239,   250,   264,   282,   302,   311,   322,
     332,   345,   356,   369,   380,   404,   436,   445,   447,   449,
     453,   462,   471,   480,   489,   498,   507,   516,   525,   535,
     543,   546,   557,   569,   592,   621,   622,   624,   626,   628,
     630,   641,   651,   659,   668,   669,   672,   689,   707,   726,
     749,   766,   784,   804,   827,   828,   829,   830,   831,   832,
     833,   834,   835,   836,   837,   838,   839,   840,   841,   842,
     843,   844,   845,   846,   847,   848,   850,   851,   852,   853,
     854,   855,   856,   857,   858,   859,   860,   861,   862,   863,
     864,   865,   866,   867,   868,   869,   870,   871,   872,   873,
     874,   875
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "TRUE", "FALSE", "THIS", "NEW", "INT",
  "IF", "ELSE", "WHILE", "BOOLEAN", "STRING", "CLASS", "PUBLIC", "STATIC",
  "VOID", "MAIN", "RETURN", "EXTENDS", "LENGTH", "DEFINEX", "DEFINEX0",
  "DEFINEX1", "DEFINEX2", "DEFINES", "DEFINES0", "DEFINES1", "DEFINES2",
  "INTEGER", "IDENTIFIER", "ADD", "SUB", "MUL", "DIV", "AND", "OR", "NOT",
  "NE", "LE", "EQ", "SQUARE_LEFT", "SQUARE_RIGHT", "CURLY_LEFT",
  "CURLY_RIGHT", "ROUND_LEFT", "ROUND_RIGHT", "SEMICOLON", "COMMA", "DOT",
  "PRINT", "$accept", "Final", "Goal", "Multi_Macro_Definition",
  "Multi_Type_Declaration", "Type_Identifier", "Multi_Type_Identifier",
  "Multi_Comma_Type_Identifier", "Multi_Comma_Identifier",
  "Multi_Comma_Expression", "Multi_Method_Declaration", "Multi_Statement",
  "Main_Class", "Type_Declaration", "Method_Declaration", "Statement",
  "Type", "Expression", "Primary_Expression", "Macro_Definition",
  "Macro_Def_Statement", "Macro_Def_Expression", "Identifier", "Integer",
  "Add", "Sub", "Mul", "Div", "And", "Or", "Not", "Ne", "Eq", "Le",
  "Square_Left", "Square_Right", "Curly_Left", "Curly_Right", "Round_Left",
  "Round_Right", "Semicolon", "Comma", "Dot", "Print", "True", "False",
  "This", "New", "Int", "If", "Else", "While", "Boolean", "String",
  "Class", "Public", "Static", "Void", "Main", "Return", "Extends",
  "Length", "Definex0", "Definex1", "Definex2", "Definex", "Defines0",
  "Defines1", "Defines2", "Defines", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305
};
# endif

#define YYPACT_NINF (-213)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
    -213,   205,  -213,  -213,  -213,  -213,  -213,  -213,  -213,  -213,
    -213,  -213,    -4,   354,  -213,  -213,    -5,    -5,    -5,    -5,
      -5,    -5,    -5,    -5,  -213,    -4,    -5,  -213,  -213,   -31,
     -31,   -31,   -31,   -31,   -31,   -31,   -31,  -213,    -4,    -5,
      -9,  -213,   -11,    -5,    -5,    -5,   -11,    -5,    -5,    -5,
    -213,     5,  -213,    32,  -213,   -31,   -11,    14,    14,    -9,
     -11,    14,    14,  -213,  -213,    -5,  -213,    38,   138,   -31,
    -213,    -5,    -5,    69,    -9,    -5,    -5,   149,    -9,  -213,
      47,  -213,  -213,  -213,  -213,  -213,  -213,   -11,   301,   -31,
    -213,   138,   138,  -213,  -213,  -213,    77,   138,   -11,    14,
    -213,  -213,  -213,    24,    69,    60,    69,   -31,   -31,   -31,
      69,   -11,    14,  -213,  -213,  -213,    24,    32,    -5,  -213,
      29,  -213,   184,  -213,  -213,    54,  -213,  -213,  -213,  -213,
    -213,  -213,  -213,  -213,  -213,  -213,  -213,   138,   138,   138,
     138,   138,   138,   138,   138,   138,     6,   316,  -213,   -11,
     -31,    29,   -11,   -31,    -5,  -213,  -213,  -213,  -213,   138,
     138,   316,    24,   138,   138,   138,    24,    -9,    -5,  -213,
    -213,    27,    50,    -5,   149,  -213,   -31,  -213,  -213,  -213,
    -213,  -213,  -213,  -213,  -213,  -213,    50,  -213,   -31,  -213,
      63,  -213,  -213,  -213,   -11,   138,  -213,   138,    63,  -213,
      27,    50,    63,    27,  -213,   -11,   -11,   -11,  -213,    69,
      63,  -213,  -213,  -213,  -213,   -31,    24,    84,  -213,   316,
    -213,   138,  -213,    50,   -11,   -31,    -5,  -213,    49,    27,
    -213,    27,    69,    69,    24,    -9,   143,  -213,  -213,    29,
      63,  -213,  -213,  -213,  -213,   138,  -213,   138,  -213,  -213,
      94,  -213,  -213,    69,    63,    -5,    -9,    50,  -213,   -11,
      27,  -213,    69,    24,    -9,   184,  -213,  -213,    -5,  -213,
    -213,  -213,  -213,  -213,    -5,    65,   -11,    65,  -213,    86,
      60,    -9,    86,  -213,   138,    70,   138,    27,   -31,    27,
      24,   138,    24,  -213,   -11,  -213,    27,    24,    24,  -213
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       2,     5,     1,   117,   114,   115,   116,   121,   118,   119,
     120,     3,     0,     5,    65,    64,     0,     0,     0,     0,
       0,     0,     0,     0,   106,     7,     0,     6,    74,     0,
       0,     0,     0,     0,     0,     0,     0,     4,     7,     0,
       0,    90,     0,     0,     0,     0,     0,     0,     0,     0,
       8,     0,    88,     0,    91,     0,     0,     0,     0,     0,
       0,     0,     0,   112,    10,     0,   107,     0,     0,     0,
      93,     0,     0,    20,     0,     0,     0,    18,     0,   108,
       0,    96,    97,    98,    99,    75,    82,     0,    50,    58,
      55,     0,     0,    56,    57,    59,     0,     0,     0,     0,
     101,   103,    95,     0,    20,     0,    20,     0,     0,     0,
      20,     0,     0,   100,   104,    11,     0,    18,     0,    39,
      38,    37,     0,    10,   109,     0,    70,    76,    77,    78,
      79,    80,    81,    83,    85,    86,    94,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    62,     0,
       0,     0,     0,     0,     0,    89,    66,    21,    84,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    23,
      19,     0,     0,     0,    18,   110,     0,    44,    58,    45,
      46,    47,    40,    41,    42,    43,     0,   113,     0,    49,
       0,    16,    53,    63,     0,     0,    71,     0,     0,    14,
       0,     0,     0,     0,    27,     0,     0,     0,    67,    20,
       0,    92,     9,    87,    36,     0,     0,     0,    48,     0,
      54,     0,    61,     0,     0,     0,     0,    29,     0,     0,
      34,     0,     0,     0,     0,     0,     0,    24,   105,     0,
       0,    51,    17,    60,    72,     0,    15,     0,    35,    28,
      31,    33,    68,    20,     0,     0,     0,     0,    52,     0,
       0,   102,     0,     0,     0,     0,    12,    10,     0,    73,
      30,    32,    69,    10,     0,    20,     0,    20,    13,     0,
      39,     0,     0,   111,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    25,     0,    26,     0,     0,     0,    22
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -213,  -213,  -213,    97,    75,  -213,  -101,  -213,   -37,  -150,
    -109,   -13,  -213,  -213,  -213,  -212,  -104,   110,   229,  -213,
    -213,  -213,   -16,  -213,  -213,  -213,  -213,  -213,  -213,  -213,
    -213,  -213,   -95,  -213,   -69,  -171,     7,   -79,     9,    89,
      22,   -45,  -213,  -151,  -213,  -213,  -213,  -213,    40,  -213,
    -213,  -213,  -213,  -213,   127,    87,  -213,  -213,  -213,  -136,
    -213,  -213,  -213,  -213,  -213,  -213,  -213,  -213,  -213,  -213
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     1,    11,    12,    37,   115,    77,   254,   198,   190,
     116,   103,    25,    38,   117,   104,   118,   191,    88,    13,
      14,    15,    89,    90,   137,   138,   139,   140,   141,   142,
      91,   143,   159,   144,   160,   214,   106,   156,    92,    55,
     212,   221,   146,   107,    93,    94,    95,    96,   120,   108,
     262,   109,   121,   239,    39,   122,    80,   125,   176,   284,
      65,   189,    16,    17,    18,    19,    20,    21,    22,    23
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      29,    30,    31,    32,    33,    34,    35,    36,   170,    24,
      40,   202,    71,    72,    41,   218,    75,    76,   173,   145,
     250,   251,   174,    51,    63,    28,   187,    56,    57,    58,
     228,    60,    61,    62,    52,    54,    28,   169,    42,    43,
      44,    45,    46,    47,    48,    49,    66,    53,    52,    78,
     271,   172,   243,    79,   154,    98,    99,   105,    64,   111,
     112,   119,    70,   124,    68,   216,    73,   168,   155,   240,
     135,   175,   113,   100,   211,   101,   114,   100,    97,   101,
     150,   110,   195,   204,   113,   123,   268,   208,   105,   158,
     105,   157,   213,   162,   105,    28,   238,   166,   147,    28,
     158,   135,   171,   261,   283,    41,   119,    28,    52,    54,
      27,    70,    52,    50,   161,   102,   163,   164,   165,   102,
     102,   178,   178,   178,   178,   178,   178,   178,   178,   178,
     188,   210,   255,   247,   288,    59,   151,   237,   199,    26,
      67,    81,    82,    83,    84,    69,   286,     0,     0,    74,
     113,     0,   199,   226,   114,   252,   113,   215,   119,   194,
     114,   274,   197,    66,     0,   226,   275,    85,    28,     0,
     257,     0,   277,    28,   209,    86,   126,     0,    87,    28,
       0,     0,     0,    41,   272,   217,     0,   153,     0,    54,
       0,   113,     0,   105,     0,   114,   234,   219,     0,     0,
     167,   148,   149,     0,     0,     2,     0,   152,     0,   265,
     246,   293,     0,   295,    28,     0,   105,   105,   298,   299,
     119,     0,   227,     0,   236,   230,     3,     4,     5,     6,
       7,     8,     9,    10,   245,     0,   192,   105,   193,   266,
     263,   196,   253,     0,     0,     0,   105,     0,     0,   119,
     203,   248,   276,   249,     0,     0,     0,     0,   278,   280,
       0,   280,   279,   267,   282,     0,     0,     0,     0,   200,
     201,   273,     0,   205,   206,   207,     0,     0,     0,   220,
       0,     0,   270,   222,     0,     0,     0,   225,   285,   161,
       0,   229,     0,     0,   231,   232,   233,   291,     0,   235,
       0,     0,     0,     0,     0,   223,     0,   224,   241,   290,
       0,   292,     0,   244,     0,     0,     0,     0,   297,    81,
      82,    83,    84,     0,     0,   256,     0,     0,     0,   258,
       0,   242,   127,   128,   129,   130,   131,   132,     0,   133,
     134,     0,   135,   264,     0,    85,    28,     0,   269,     0,
     136,     0,     0,    86,     0,   259,     0,   260,     0,     0,
       0,    41,    54,     0,     0,   281,   177,   179,   180,   181,
     182,   183,   184,   185,   186,     3,     4,     5,     6,     7,
       8,     9,    10,   296,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   287,     0,   289,     0,     0,     0,
       0,   294
};

static const yytype_int16 yycheck[] =
{
      16,    17,    18,    19,    20,    21,    22,    23,   117,    13,
      26,   161,    57,    58,    45,   186,    61,    62,   122,    88,
     232,   233,   123,    39,    19,    30,    20,    43,    44,    45,
     201,    47,    48,    49,    43,    46,    30,   116,    29,    30,
      31,    32,    33,    34,    35,    36,    14,    40,    43,    65,
     262,   120,   223,    15,    99,    71,    72,    73,    51,    75,
      76,    77,    48,    16,    55,   174,    59,   112,    44,   219,
      41,    17,     7,     8,    47,    10,    11,     8,    69,    10,
      96,    74,   151,   162,     7,    78,   257,   166,   104,    40,
     106,   104,    42,   106,   110,    30,    12,   110,    89,    30,
      40,    41,   118,     9,    18,    45,   122,    30,    43,    46,
      13,    48,    43,    38,   105,    50,   107,   108,   109,    50,
      50,   137,   138,   139,   140,   141,   142,   143,   144,   145,
     146,   168,   236,   228,   285,    46,    96,   216,   154,    12,
      53,     3,     4,     5,     6,    56,   282,    -1,    -1,    60,
       7,    -1,   168,   198,    11,   234,     7,   173,   174,   150,
      11,   265,   153,    14,    -1,   210,   267,    29,    30,    -1,
     239,    -1,   273,    30,   167,    37,    87,    -1,    68,    30,
      -1,    -1,    -1,    45,   263,   176,    -1,    98,    -1,    46,
      -1,     7,    -1,   209,    -1,    11,   209,   188,    -1,    -1,
     111,    91,    92,    -1,    -1,     0,    -1,    97,    -1,   254,
     226,   290,    -1,   292,    30,    -1,   232,   233,   297,   298,
     236,    -1,   200,    -1,   215,   203,    21,    22,    23,    24,
      25,    26,    27,    28,   225,    -1,   147,   253,   149,   255,
     253,   152,   235,    -1,    -1,    -1,   262,    -1,    -1,   265,
     161,   229,   268,   231,    -1,    -1,    -1,    -1,   274,   275,
      -1,   277,   275,   256,   277,    -1,    -1,    -1,    -1,   159,
     160,   264,    -1,   163,   164,   165,    -1,    -1,    -1,   190,
      -1,    -1,   260,   194,    -1,    -1,    -1,   198,   281,   280,
      -1,   202,    -1,    -1,   205,   206,   207,   288,    -1,   210,
      -1,    -1,    -1,    -1,    -1,   195,    -1,   197,   219,   287,
      -1,   289,    -1,   224,    -1,    -1,    -1,    -1,   296,     3,
       4,     5,     6,    -1,    -1,   236,    -1,    -1,    -1,   240,
      -1,   221,    31,    32,    33,    34,    35,    36,    -1,    38,
      39,    -1,    41,   254,    -1,    29,    30,    -1,   259,    -1,
      49,    -1,    -1,    37,    -1,   245,    -1,   247,    -1,    -1,
      -1,    45,    46,    -1,    -1,   276,   137,   138,   139,   140,
     141,   142,   143,   144,   145,    21,    22,    23,    24,    25,
      26,    27,    28,   294,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   284,    -1,   286,    -1,    -1,    -1,
      -1,   291
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    52,     0,    21,    22,    23,    24,    25,    26,    27,
      28,    53,    54,    70,    71,    72,   113,   114,   115,   116,
     117,   118,   119,   120,    13,    63,   105,    54,    30,    73,
      73,    73,    73,    73,    73,    73,    73,    55,    64,   105,
      73,    45,    89,    89,    89,    89,    89,    89,    89,    89,
      55,    73,    43,    87,    46,    90,    73,    73,    73,    90,
      73,    73,    73,    19,    87,   111,    14,   106,    89,    90,
      48,    92,    92,    87,    90,    92,    92,    57,    73,    15,
     107,     3,     4,     5,     6,    29,    37,    68,    69,    73,
      74,    81,    89,    95,    96,    97,    98,    89,    73,    73,
       8,    10,    50,    62,    66,    73,    87,    94,   100,   102,
      87,    73,    73,     7,    11,    56,    61,    65,    67,    73,
      99,   103,   106,    87,    16,   108,    90,    31,    32,    33,
      34,    35,    36,    38,    39,    41,    49,    75,    76,    77,
      78,    79,    80,    82,    84,    85,    93,    89,    68,    68,
      73,    99,    68,    90,    92,    44,    88,    62,    40,    83,
      85,    89,    62,    89,    89,    89,    62,    90,    92,    88,
      61,    73,    85,    67,    57,    17,   109,    69,    73,    69,
      69,    69,    69,    69,    69,    69,    69,    20,    73,   112,
      60,    68,    90,    90,    89,    85,    90,    89,    59,    73,
      68,    68,    60,    90,    88,    68,    68,    68,    88,    87,
      59,    47,    91,    42,    86,    73,    61,    89,    86,    89,
      90,    92,    90,    68,    68,    90,    92,    91,    86,    90,
      91,    90,    90,    90,    62,    90,    89,    88,    12,   104,
      60,    90,    68,    86,    90,    89,    73,    83,    91,    91,
      66,    66,    88,    87,    58,    67,    90,    85,    90,    68,
      68,     9,   101,    62,    90,    92,    73,    87,    86,    90,
      91,    66,    88,    87,    67,    57,    73,    57,    73,    62,
      73,    90,    62,    18,   110,    87,   110,    68,    94,    68,
      91,    89,    91,    88,    68,    88,    90,    91,    88,    88
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    51,    52,    52,    53,    54,    54,    55,    55,    56,
      57,    57,    58,    58,    59,    59,    60,    60,    61,    61,
      62,    62,    63,    64,    64,    65,    65,    66,    66,    66,
      66,    66,    66,    66,    66,    66,    67,    67,    67,    67,
      68,    68,    68,    68,    68,    68,    68,    68,    68,    68,
      68,    68,    68,    68,    68,    69,    69,    69,    69,    69,
      69,    69,    69,    69,    70,    70,    71,    71,    71,    71,
      72,    72,    72,    72,    73,    74,    75,    76,    77,    78,
      79,    80,    81,    82,    83,    84,    85,    86,    87,    88,
      89,    90,    91,    92,    93,    94,    95,    96,    97,    98,
      99,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118,
     119,   120
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     2,     3,     0,     2,     0,     2,     3,
       0,     2,     2,     4,     1,     3,     1,     3,     0,     2,
       0,     2,    21,     6,     8,    12,    13,     3,     5,     4,
       7,     5,     7,     5,     4,     5,     3,     1,     1,     1,
       3,     3,     3,     3,     3,     3,     3,     3,     4,     3,
       1,     5,     6,     3,     4,     1,     1,     1,     1,     1,
       5,     4,     2,     3,     1,     1,     7,     8,    10,    12,
       7,     8,    10,    12,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyo, yytype, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[+yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
#  else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                yy_state_t *yyssp, int yytoken)
{
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Actual size of YYARG. */
  int yycount = 0;
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[+*yyssp];
      YYPTRDIFF_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
      yysize = yysize0;
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYPTRDIFF_T yysize1
                    = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    /* Don't count the "%s"s in the final size, but reserve room for
       the terminator.  */
    YYPTRDIFF_T yysize1 = yysize + (yystrlen (yyformat) - 2 * yycount) + 1;
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss;
    yy_state_t *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYPTRDIFF_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 3:
#line 99 "A1.y"
                     {printf("%s",(yyvsp[0].text));}
#line 1655 "A1.tab.c"
    break;

  case 4:
#line 102 "A1.y"
{char * temp=(char *) malloc(1000000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp,"\n\n");
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n\n");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n\n");
	(yyval.text)=temp;
	}
#line 1667 "A1.tab.c"
    break;

  case 5:
#line 110 "A1.y"
                               {(yyval.text)="";}
#line 1673 "A1.tab.c"
    break;

  case 6:
#line 112 "A1.y"
        {(yyval.text)="";
	}
#line 1680 "A1.tab.c"
    break;

  case 7:
#line 116 "A1.y"
                               {(yyval.text)="";}
#line 1686 "A1.tab.c"
    break;

  case 8:
#line 118 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 1697 "A1.tab.c"
    break;

  case 9:
#line 128 "A1.y"
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
}
#line 1709 "A1.tab.c"
    break;

  case 10:
#line 136 "A1.y"
                              {(yyval.text)="";}
#line 1715 "A1.tab.c"
    break;

  case 11:
#line 138 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 1726 "A1.tab.c"
    break;

  case 12:
#line 146 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 1737 "A1.tab.c"
    break;

  case 13:
#line 154 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 1750 "A1.tab.c"
    break;

  case 14:
#line 163 "A1.y"
                                  {(yyval.comma_str).text=(yyvsp[0].text);(yyval.comma_str).list[0]=(yyvsp[0].text);(yyval.comma_str).count=1;}
#line 1756 "A1.tab.c"
    break;

  case 15:
#line 165 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].comma_str).text);strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.comma_str).text=temp;
	for(int i=0;i<(yyvsp[-2].comma_str).count;i++)
	{(yyval.comma_str).list[i]=(yyvsp[-2].comma_str).list[i];}
	(yyval.comma_str).list[(yyvsp[-2].comma_str).count]=(yyvsp[0].text);
	(yyval.comma_str).count=(yyvsp[-2].comma_str).count+1;
	}
#line 1772 "A1.tab.c"
    break;

  case 16:
#line 178 "A1.y"
                                  {(yyval.comma_str).text=(yyvsp[0].text);(yyval.comma_str).list[0]=(yyvsp[0].text);(yyval.comma_str).count=1;}
#line 1778 "A1.tab.c"
    break;

  case 17:
#line 180 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].comma_str).text);strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.comma_str).text=temp;
	for(int i=0;i<(yyvsp[-2].comma_str).count;i++)
	{(yyval.comma_str).list[i]=(yyvsp[-2].comma_str).list[i];}
	(yyval.comma_str).list[(yyvsp[-2].comma_str).count]=(yyvsp[0].text);
	(yyval.comma_str).count=(yyvsp[-2].comma_str).count+1;
	}
#line 1794 "A1.tab.c"
    break;

  case 18:
#line 192 "A1.y"
                                 {(yyval.text)="";}
#line 1800 "A1.tab.c"
    break;

  case 19:
#line 194 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 1811 "A1.tab.c"
    break;

  case 20:
#line 201 "A1.y"
                        {(yyval.text)="";}
#line 1817 "A1.tab.c"
    break;

  case 21:
#line 203 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 1828 "A1.tab.c"
    break;

  case 22:
#line 213 "A1.y"
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-20].text));strcat(temp," ");
	strcat(temp,(yyvsp[-19].text));strcat(temp," ");
	strcat(temp,(yyvsp[-18].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-17].text));strcat(temp," ");
	strcat(temp,(yyvsp[-16].text));strcat(temp," ");
	strcat(temp,(yyvsp[-15].text));strcat(temp," ");
	strcat(temp,(yyvsp[-14].text));
	strcat(temp,(yyvsp[-13].text));
	strcat(temp,(yyvsp[-12].text));
	strcat(temp,(yyvsp[-11].text));
	strcat(temp,(yyvsp[-10].text));strcat(temp," ");
	strcat(temp,(yyvsp[-9].text));
	strcat(temp,(yyvsp[-8].text));
	strcat(temp,(yyvsp[-7].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-6].text));
	strcat(temp,(yyvsp[-5].text));
	strcat(temp,(yyvsp[-4].text));
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
}
#line 1858 "A1.tab.c"
    break;

  case 23:
#line 240 "A1.y"
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-5].text));strcat(temp," ");
	strcat(temp,(yyvsp[-4].text));strcat(temp," ");
	strcat(temp,(yyvsp[-3].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-2].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
}
#line 1873 "A1.tab.c"
    break;

  case 24:
#line 251 "A1.y"
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-7].text));strcat(temp," ");
	strcat(temp,(yyvsp[-6].text));strcat(temp," ");
	strcat(temp,(yyvsp[-5].text));strcat(temp," ");
	strcat(temp,(yyvsp[-4].text));strcat(temp," ");
	strcat(temp,(yyvsp[-3].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-2].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
}
#line 1890 "A1.tab.c"
    break;

  case 25:
#line 265 "A1.y"
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-11].text));strcat(temp," ");
	strcat(temp,(yyvsp[-10].text));strcat(temp," ");
	strcat(temp,(yyvsp[-9].text));
	strcat(temp,(yyvsp[-8].text));
	strcat(temp,(yyvsp[-7].text));strcat(temp," ");
	strcat(temp,(yyvsp[-6].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-5].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-4].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
}
#line 1911 "A1.tab.c"
    break;

  case 26:
#line 283 "A1.y"
{char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-12].text));strcat(temp," ");
	strcat(temp,(yyvsp[-11].text));strcat(temp," ");
	strcat(temp,(yyvsp[-10].text));
	strcat(temp,(yyvsp[-9].text));
	strcat(temp,(yyvsp[-8].text));
	strcat(temp,(yyvsp[-7].text));strcat(temp," ");
	strcat(temp,(yyvsp[-6].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-5].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-4].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
}
#line 1933 "A1.tab.c"
    break;

  case 27:
#line 303 "A1.y"
                        {char * temp=(char *) malloc(100000* sizeof(char));
			temp[0]='\0';
			strcat(temp,(yyvsp[-2].text));strcat(temp,"\n");
			strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
			strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
			(yyval.text)=temp;
			}
#line 1945 "A1.tab.c"
    break;

  case 28:
#line 312 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-4].text));
	strcat(temp,(yyvsp[-3].text));
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
	}
#line 1959 "A1.tab.c"
    break;

  case 29:
#line 323 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
	}
#line 1972 "A1.tab.c"
    break;

  case 30:
#line 333 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-6].text));strcat(temp," ");
	strcat(temp,(yyvsp[-5].text));
	strcat(temp,(yyvsp[-4].text));
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
	}
#line 1988 "A1.tab.c"
    break;

  case 31:
#line 346 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-4].text));
	strcat(temp,(yyvsp[-3].text));
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
	}
#line 2002 "A1.tab.c"
    break;

  case 32:
#line 357 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-6].text));
	strcat(temp,(yyvsp[-5].text));
	strcat(temp,(yyvsp[-4].text));
	strcat(temp,(yyvsp[-3].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
	}
#line 2018 "A1.tab.c"
    break;

  case 33:
#line 370 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-4].text));
	strcat(temp,(yyvsp[-3].text));
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");
	strcat(temp,(yyvsp[0].text));strcat(temp,"\n");
	(yyval.text)=temp;
	}
#line 2032 "A1.tab.c"
    break;

  case 34:
#line 381 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	
	
	int i=0;
	for(i=0;i<macro_count;i++)
	{
		if(strcmp(macro_map[i][0],(yyvsp[-3].text))==0)
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
	(yyval.text)=temp;
	}
#line 2059 "A1.tab.c"
    break;

  case 35:
#line 405 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	
	
	int i=0;
	for(i=0;i<macro_count;i++)
	{
		if(strcmp(macro_map[i][0],(yyvsp[-4].text))==0)
		{
			break;
		}
	}
	
	if(macro_arg_count[i]!=(yyvsp[-2].comma_str).count)
	{
		printf("//Failed to parse input code");
		YYABORT;
	}
	
	strcat(temp,macro_map[i][1]);
	for(int j=0;j<(yyvsp[-2].comma_str).count;j++)
	{
		temp=replace(temp,macro_args[i][j],(yyvsp[-2].comma_str).list[j]);
	}
	
	
	(yyval.text)=temp;	
	
	}
#line 2093 "A1.tab.c"
    break;

  case 36:
#line 437 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2105 "A1.tab.c"
    break;

  case 37:
#line 445 "A1.y"
                 {(yyval.text)=(yyvsp[0].text);}
#line 2111 "A1.tab.c"
    break;

  case 38:
#line 447 "A1.y"
              {(yyval.text)=(yyvsp[0].text);}
#line 2117 "A1.tab.c"
    break;

  case 39:
#line 449 "A1.y"
                    {(yyval.text)=(yyvsp[0].text);}
#line 2123 "A1.tab.c"
    break;

  case 40:
#line 454 "A1.y"
                        {char * temp=(char *) malloc(100000* sizeof(char));
			temp[0]='\0';
			strcat(temp,(yyvsp[-2].text));strcat(temp," ");
			strcat(temp,(yyvsp[-1].text));strcat(temp," ");
			strcat(temp,(yyvsp[0].text));
			(yyval.text)=temp;
			}
#line 2135 "A1.tab.c"
    break;

  case 41:
#line 463 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2147 "A1.tab.c"
    break;

  case 42:
#line 472 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2159 "A1.tab.c"
    break;

  case 43:
#line 481 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2171 "A1.tab.c"
    break;

  case 44:
#line 490 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2183 "A1.tab.c"
    break;

  case 45:
#line 499 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2195 "A1.tab.c"
    break;

  case 46:
#line 508 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2207 "A1.tab.c"
    break;

  case 47:
#line 517 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));strcat(temp," ");
	strcat(temp,(yyvsp[-1].text));strcat(temp," ");
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2219 "A1.tab.c"
    break;

  case 48:
#line 526 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2232 "A1.tab.c"
    break;

  case 49:
#line 536 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2244 "A1.tab.c"
    break;

  case 50:
#line 544 "A1.y"
        {(yyval.text)=(yyvsp[0].text);}
#line 2250 "A1.tab.c"
    break;

  case 51:
#line 547 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-4].text));
	strcat(temp,(yyvsp[-3].text));
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2264 "A1.tab.c"
    break;

  case 52:
#line 558 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-5].text));
	strcat(temp,(yyvsp[-4].text));
	strcat(temp,(yyvsp[-3].text));
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].comma_str).text);
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2279 "A1.tab.c"
    break;

  case 53:
#line 570 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	
	int i=0;
	for(i=0;i<macro_count;i++)
	{
		if(strcmp(macro_map[i][0],(yyvsp[-2].text))==0)
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
	(yyval.text)=temp;
	}
#line 2305 "A1.tab.c"
    break;

  case 54:
#line 593 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	
	int i=0;
	for(i=0;i<macro_count;i++)
	{
		if(strcmp(macro_map[i][0],(yyvsp[-3].text))==0)
		{
			break ;
		}
	}
	
	if(macro_arg_count[i]!=(yyvsp[-1].comma_str).count)
	{
		printf("//Failed to parse input code");
		YYABORT;
	}
	
	strcat(temp,macro_map[i][1]);
	
	for(int j=0;j<(yyvsp[-1].comma_str).count;j++)
	{
		temp=replace(temp,macro_args[i][j],(yyvsp[-1].comma_str).list[j]);
	}
	
	(yyval.text)=temp;
	}
#line 2337 "A1.tab.c"
    break;

  case 55:
#line 621 "A1.y"
                            {(yyval.text)=(yyvsp[0].text);}
#line 2343 "A1.tab.c"
    break;

  case 56:
#line 622 "A1.y"
               {(yyval.text)=(yyvsp[0].text);}
#line 2349 "A1.tab.c"
    break;

  case 57:
#line 624 "A1.y"
                {(yyval.text)=(yyvsp[0].text);}
#line 2355 "A1.tab.c"
    break;

  case 58:
#line 626 "A1.y"
                     {(yyval.text)=(yyvsp[0].text);}
#line 2361 "A1.tab.c"
    break;

  case 59:
#line 628 "A1.y"
               {(yyval.text)=(yyvsp[0].text);}
#line 2367 "A1.tab.c"
    break;

  case 60:
#line 631 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-4].text));strcat(temp," ");
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2381 "A1.tab.c"
    break;

  case 61:
#line 642 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-3].text));strcat(temp," ");
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2394 "A1.tab.c"
    break;

  case 62:
#line 652 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2405 "A1.tab.c"
    break;

  case 63:
#line 660 "A1.y"
        {char * temp=(char *) malloc(100000* sizeof(char));
	temp[0]='\0';
	strcat(temp,(yyvsp[-2].text));
	strcat(temp,(yyvsp[-1].text));
	strcat(temp,(yyvsp[0].text));
	(yyval.text)=temp;
	}
#line 2417 "A1.tab.c"
    break;

  case 66:
#line 673 "A1.y"
        {
		(yyval.text)="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-5].text));
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=0;
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-2].text));strcat(temp,"\n");strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");strcat(temp,(yyvsp[0].text));
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
#line 2437 "A1.tab.c"
    break;

  case 67:
#line 690 "A1.y"
        {
		(yyval.text)="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-6].text));
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=1;
		macro_args[macro_count][0]=(yyvsp[-4].text);
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-2].text));strcat(temp,"\n");strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");strcat(temp,(yyvsp[0].text));
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
#line 2458 "A1.tab.c"
    break;

  case 68:
#line 708 "A1.y"
        {
		(yyval.text)="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-8].text));		
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=2;
		macro_args[macro_count][0]=(yyvsp[-6].text);
		macro_args[macro_count][1]=(yyvsp[-4].text);
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-2].text));strcat(temp,"\n");strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");strcat(temp,(yyvsp[0].text));
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
#line 2480 "A1.tab.c"
    break;

  case 69:
#line 727 "A1.y"
        {
		(yyval.text)="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-10].text));
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=2+(yyvsp[-4].comma_str).count;
		macro_args[macro_count][0]=(yyvsp[-8].text);
		macro_args[macro_count][1]=(yyvsp[-6].text);
		for(int i=0;i<(yyvsp[-4].comma_str).count;i++)
		{
			macro_args[macro_count][i+2]=(yyvsp[-4].comma_str).list[i];
		}
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-2].text));strcat(temp,"\n");strcat(temp,(yyvsp[-1].text));strcat(temp,"\n");strcat(temp,(yyvsp[0].text));
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
#line 2506 "A1.tab.c"
    break;

  case 70:
#line 750 "A1.y"
        {
		(yyval.text)="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-5].text));
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=0;
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-2].text));strcat(temp,(yyvsp[-1].text));strcat(temp,(yyvsp[0].text));
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
#line 2526 "A1.tab.c"
    break;

  case 71:
#line 767 "A1.y"
        {
		(yyval.text)="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-6].text));
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=1;
		macro_args[macro_count][0]=(yyvsp[-4].text);
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-2].text));strcat(temp,(yyvsp[-1].text));strcat(temp,(yyvsp[0].text));
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
#line 2547 "A1.tab.c"
    break;

  case 72:
#line 785 "A1.y"
        {
		(yyval.text)="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-8].text));		
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=2;
		macro_args[macro_count][0]=(yyvsp[-6].text);
		macro_args[macro_count][1]=(yyvsp[-4].text);
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-2].text));strcat(temp,(yyvsp[-1].text));strcat(temp,(yyvsp[0].text));
		
		macro_map[macro_count][1]=temp;
		macro_count++;

	}
#line 2570 "A1.tab.c"
    break;

  case 73:
#line 805 "A1.y"
        {
		(yyval.text)="";
		char * temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-10].text));
		macro_map[macro_count][0]=temp;
		macro_arg_count[macro_count]=2+(yyvsp[-4].comma_str).count;
		macro_args[macro_count][0]=(yyvsp[-8].text);
		macro_args[macro_count][1]=(yyvsp[-6].text);
		for(int i=0;i<(yyvsp[-4].comma_str).count;i++)
		{
			macro_args[macro_count][i+2]=(yyvsp[-4].comma_str).list[i];
		}
		
		temp=(char *) malloc(100000* sizeof(char));
		temp[0]='\0';
		strcat(temp,(yyvsp[-2].text));strcat(temp,(yyvsp[-1].text));strcat(temp,(yyvsp[0].text));
		
		macro_map[macro_count][1]=temp;
		macro_count++;
	}
#line 2596 "A1.tab.c"
    break;

  case 74:
#line 827 "A1.y"
                       {(yyval.text)=(yyvsp[0].text);}
#line 2602 "A1.tab.c"
    break;

  case 75:
#line 828 "A1.y"
                 {(yyval.text)=(yyvsp[0].text);}
#line 2608 "A1.tab.c"
    break;

  case 76:
#line 829 "A1.y"
         {(yyval.text)="+";}
#line 2614 "A1.tab.c"
    break;

  case 77:
#line 830 "A1.y"
         {(yyval.text)="-";}
#line 2620 "A1.tab.c"
    break;

  case 78:
#line 831 "A1.y"
         {(yyval.text)="*";}
#line 2626 "A1.tab.c"
    break;

  case 79:
#line 832 "A1.y"
         {(yyval.text)="/";}
#line 2632 "A1.tab.c"
    break;

  case 80:
#line 833 "A1.y"
         {(yyval.text)="&&";}
#line 2638 "A1.tab.c"
    break;

  case 81:
#line 834 "A1.y"
       {(yyval.text)="||";}
#line 2644 "A1.tab.c"
    break;

  case 82:
#line 835 "A1.y"
         {(yyval.text)="!";}
#line 2650 "A1.tab.c"
    break;

  case 83:
#line 836 "A1.y"
       {(yyval.text)="!=";}
#line 2656 "A1.tab.c"
    break;

  case 84:
#line 837 "A1.y"
       {(yyval.text)="=";}
#line 2662 "A1.tab.c"
    break;

  case 85:
#line 838 "A1.y"
       {(yyval.text)="<=";}
#line 2668 "A1.tab.c"
    break;

  case 86:
#line 839 "A1.y"
                         {(yyval.text)="[";}
#line 2674 "A1.tab.c"
    break;

  case 87:
#line 840 "A1.y"
                           {(yyval.text)="]";}
#line 2680 "A1.tab.c"
    break;

  case 88:
#line 841 "A1.y"
                       {(yyval.text)="{";}
#line 2686 "A1.tab.c"
    break;

  case 89:
#line 842 "A1.y"
                         {(yyval.text)="}";}
#line 2692 "A1.tab.c"
    break;

  case 90:
#line 843 "A1.y"
                       {(yyval.text)="(";}
#line 2698 "A1.tab.c"
    break;

  case 91:
#line 844 "A1.y"
                         {(yyval.text)=")";}
#line 2704 "A1.tab.c"
    break;

  case 92:
#line 845 "A1.y"
                     {(yyval.text)=";";}
#line 2710 "A1.tab.c"
    break;

  case 93:
#line 846 "A1.y"
             {(yyval.text)=",";}
#line 2716 "A1.tab.c"
    break;

  case 94:
#line 847 "A1.y"
        {(yyval.text)=".";}
#line 2722 "A1.tab.c"
    break;

  case 95:
#line 848 "A1.y"
             {(yyval.text)="System.out.println";}
#line 2728 "A1.tab.c"
    break;

  case 96:
#line 850 "A1.y"
           {(yyval.text)="true";}
#line 2734 "A1.tab.c"
    break;

  case 97:
#line 851 "A1.y"
             {(yyval.text)="false";}
#line 2740 "A1.tab.c"
    break;

  case 98:
#line 852 "A1.y"
           {(yyval.text)="this";}
#line 2746 "A1.tab.c"
    break;

  case 99:
#line 853 "A1.y"
         {(yyval.text)="new";}
#line 2752 "A1.tab.c"
    break;

  case 100:
#line 854 "A1.y"
         {(yyval.text)="int";}
#line 2758 "A1.tab.c"
    break;

  case 101:
#line 855 "A1.y"
       {(yyval.text)="if";}
#line 2764 "A1.tab.c"
    break;

  case 102:
#line 856 "A1.y"
           {(yyval.text)="else";}
#line 2770 "A1.tab.c"
    break;

  case 103:
#line 857 "A1.y"
             {(yyval.text)="while";}
#line 2776 "A1.tab.c"
    break;

  case 104:
#line 858 "A1.y"
                 {(yyval.text)="boolean";}
#line 2782 "A1.tab.c"
    break;

  case 105:
#line 859 "A1.y"
               {(yyval.text)="String";}
#line 2788 "A1.tab.c"
    break;

  case 106:
#line 860 "A1.y"
             {(yyval.text)="class";}
#line 2794 "A1.tab.c"
    break;

  case 107:
#line 861 "A1.y"
               {(yyval.text)="public";}
#line 2800 "A1.tab.c"
    break;

  case 108:
#line 862 "A1.y"
               {(yyval.text)="static";}
#line 2806 "A1.tab.c"
    break;

  case 109:
#line 863 "A1.y"
           {(yyval.text)="void";}
#line 2812 "A1.tab.c"
    break;

  case 110:
#line 864 "A1.y"
           {(yyval.text)="main";}
#line 2818 "A1.tab.c"
    break;

  case 111:
#line 865 "A1.y"
               {(yyval.text)="return";}
#line 2824 "A1.tab.c"
    break;

  case 112:
#line 866 "A1.y"
                 {(yyval.text)="extends";}
#line 2830 "A1.tab.c"
    break;

  case 113:
#line 867 "A1.y"
               {(yyval.text)="length";}
#line 2836 "A1.tab.c"
    break;

  case 114:
#line 868 "A1.y"
                   {(yyval.text)="#defineExpr0";}
#line 2842 "A1.tab.c"
    break;

  case 115:
#line 869 "A1.y"
                   {(yyval.text)="#defineExpr1";}
#line 2848 "A1.tab.c"
    break;

  case 116:
#line 870 "A1.y"
                   {(yyval.text)="#defineExpr2";}
#line 2854 "A1.tab.c"
    break;

  case 117:
#line 871 "A1.y"
                 {(yyval.text)="#defineExpr";}
#line 2860 "A1.tab.c"
    break;

  case 118:
#line 872 "A1.y"
                   {(yyval.text)="#defineStmt0";}
#line 2866 "A1.tab.c"
    break;

  case 119:
#line 873 "A1.y"
                   {(yyval.text)="#defineStmt1";}
#line 2872 "A1.tab.c"
    break;

  case 120:
#line 874 "A1.y"
                   {(yyval.text)="#defineStmt2";}
#line 2878 "A1.tab.c"
    break;

  case 121:
#line 875 "A1.y"
                 {(yyval.text)="#defineStmt";}
#line 2884 "A1.tab.c"
    break;


#line 2888 "A1.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *, YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[+*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 877 "A1.y"


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


