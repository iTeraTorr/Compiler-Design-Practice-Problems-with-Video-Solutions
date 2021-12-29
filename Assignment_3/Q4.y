%{
    #include<stdio.h>
    #include<stdlib.h>
    extern int yylex();
    void yyerror(char *s);
    int count=0;
%}

%token IF op num id NL

%%

E   :T NL                {  printf("Nested if Depth= %d\n",count);exit(0); }
    ;

T   :IF'('cond')''{'T'}'                      {count++;}
    | num
    ;
cond :x op x 
     ;

x   : id
    | num
    ;


%%

void yyerror(char *msg)
{
    printf("Invalid statement !!!!\n");
    exit(1);
}
int main()
{
    printf("Enter the Nested IF statement\n");
    yyparse();
}
