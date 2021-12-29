%{
    #include <stdio.h>
    #include <stdlib.h> 
    #include <string.h>
    char str[1000]="\0";
    int i=0,a=2;
    char g; 
    char obtain_char(char c)
    {
        a=a%26;
        a=(a == 0 ? 1 : a );
        if(c>='a' && c<='z')
        {
            if(c+a <='z')
            c= c+a;
            else
            {
               int remain=a;         
               remain-=('z'-c);
               remain--;
               c='a'+remain;
            }
        }
        else
        {
           if(c+a <='Z')
           c=c+a;
           else
           {
               int remain=a;
               remain-=('Z'-c);
               remain--;
               c='A'+remain;
           }

        }
        a++;
        return c;
    }
%}

%option noyywrap

%%

[a-zA-Z]       {
                    g=yytext[0];
                    g=obtain_char(g);
                    str[i]=g;
                    i++;
                }
.               {
                    g=yytext[0];
                    str[i]=g;
                    i++;
                }
\n             {return 0;}

%%
int main()
{

    printf("Enter the string to modify \n");
    yylex();

    printf("Final string is : %s\n",str);
    return 0;
}