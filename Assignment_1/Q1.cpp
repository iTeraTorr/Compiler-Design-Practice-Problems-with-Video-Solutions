#include<bits/stdc++.h>
using namespace std;
int val=0;
void handler(int sig){
    val=1;
}
int main(){
    signal(SIGINT,handler);
    char c;
    int cnt=0, spaces=0, newline=1;
    while((c=getchar())!='\0'){
        if(c==' ')
        spaces++;
        else if(c=='\n')
        newline++;
        if(c>0 && c<=127)
        cnt++;
        if(val==1)
        break;
    }
    cout<<"Number of spaces: "<<spaces<<"\nNumber of lines: "<<newline<<"\nNumber of characters: "<<cnt<<"\n";
return 0;
}