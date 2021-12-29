#include<bits/stdc++.h>
using namespace std;
int val=0;
void handler(int sig){
    val=1;
}
int main(){
    signal(SIGINT,handler);
    char c;
    int vowel=0, consonant=0;
    while((c=getchar())!='\0'){
        if(c>0 && c<=255 && c!=' ' && c!='\t' && c!='\b' && c!='\n'){
            if(c>=65 && c<=90){
                c+=32;
            }
            if(c>=97 && c<=122){
                if(c==97 || c==101 || c==105 || c==111 || c==117){
                    vowel++;
                }else{
                    consonant++;
                }
            }
        }
        if(val==1)
        break;
    }
    cout<<"Number of vowels: "<<vowel<<"\nNumber of consonants: "<<consonant<<"\n";
return 0;
}