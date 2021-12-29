#include<bits/stdc++.h>
using namespace std;
int val=0;
void handler(int sig){
    val=1;
}
int main(){
    signal(SIGINT,handler);
    char c;
    while((c=getchar())!='\0'){
        if(c>0 && c<=255 && c!=' ' && c!='\t' && c!='\b' && c!='\n')
        putchar(c);
        if(val==1)
        break;
    }
return 0;
}