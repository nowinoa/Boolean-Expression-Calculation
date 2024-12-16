%{
	// Author: Ainhoa Prada Tello - 001352985

	#include<stdio.h>
	#include<math.h>

int yylex (void);
extern int yyparse();
extern FILE* yyin;

void yyerror (char const *);
%}

%define api.value.type {int}

%token NEWLINE
%token TRUE FALSE
%token AND OR NOT
%start input


%%

input:
  %empty
| input line
;

line:
  NEWLINE
| exp NEWLINE { printf("%s\n", $1 ? "TRUE" : "FALSE"); }
;

exp:
TRUE 
| FALSE 
| exp exp AND {$$ = $1 && $2;} // AND - will return 1 for true and 0 for false
| exp exp OR {$$ = $1 || $2;} // OR - will return 1 for true and 0 for false
| exp NOT {$$ = !$1;}	     //NOT - will change the value 1 to 0 or 0 to 1 
;
%%


// If the syntax used for the input is not correct it will show this error message
void yyerror (char const *s){
  printf("%s\n", "The provided syntax is not correct\n");
}

int main(void){
  yyin = stdin;
  do {
	yyparse();
  } while (!feof(yyin));
  return 0;
}  