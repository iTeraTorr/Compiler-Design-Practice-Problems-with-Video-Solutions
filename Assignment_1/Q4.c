#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<string.h>
//An identifier can be composed of letters such as uppercase, lowercase letters, underscore, digits, but the starting letter should be either an alphabet or an underscore. 
//There are total 63 alphanumeric characters
/*This is a function to check is a character is alphanumeric or not*/
bool isAlpha(char c){
    int x=(int)c;
    if(x>=48 && x<=57 || x>=65 && x<=90 || x>=97 && x<=122 || x==95)
        return true;
    else
    {
        return false;
    }
}
/*This is a function to check if a token is reserved keyword or not*/
bool isKeyword(char *c){
    const char *a[33];
    a[1] = "auto";
    a[2] = "break";
    a[3] = "case";
    a[4] = "char";
    a[5] =  "int";
    a[6] =  "const";
    a[7] =  "continue";
    a[8] =  "default";
    a[9] =  "do";
    a[10] = "double";
    a[11] = "else";
    a[12] = "enum";
    a[13] = "extern";
    a[14] = "float";
    a[15] = "for";
    a[16] = "goto";
    a[17] = "if";
    a[18] = "long";
    a[19] = "register";
    a[20] = "return";
    a[21] = "short";
    a[22] = "signed";
    a[23] = "sizeof";
    a[24] = "static";
    a[25] = "struct";
    a[26] = "switch";
    a[27] = "typedef";
    a[28] = "union";
    a[29] = "unsigned";
    a[30] = "void";
    a[31] = "volatile";
    a[32] = "while";
    for(int i=1;i<33;i++){
        if(strcmp(a[i],c)==0)
        return true;
    }
    return false;
}
/*Main Function starts*/
int main(int argc, char **argv){


    char str[256];
    printf("Enter a string: ");
    scanf("%[^\n]%*c", str); //Enter the keyword here
    int result=isKeyword(str);
    //A identifier should not be a reserved keyword
    if(result==0)
    printf("Not a keyword\n");
    else
    printf("It is a keyword\n");
    return 0;
}