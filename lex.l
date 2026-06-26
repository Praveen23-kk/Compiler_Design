%{
#include <stdio.h>

int vowel_count = 0;
int word_count = 0;
int char_count = 0;
int line_count = 0;
int consonant_count = 0;
%}

%%

\n {
    line_count++;
    char_count++;
}

[aeiouAEIOU] {
    vowel_count++;
    char_count++;
}

[a-zA-Z] {
    /* if not caught in vowel */
    consonant_count++;
    char_count++;
}

[a-zA-Z0-9]+ {
    /* Match a full word */
    word_count++;
    char_count += yyleng;

    for(int i=0; i < yyleng; i++)
    {
        char ch = yytext[i];
        if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z'))
        {
            if(ch=='a' || ch=='e' || ch=='i' || ch=='o' || ch=='u' ||
               ch=='A' || ch=='E' || ch=='I' || ch=='O' || ch=='U')
               {
                vowel_count++;
               }
            else
            {
                consonant_count++;
            }
        }
    }
}

. {
    /* Match any other character (spaces, tabs, special punctuation symbols) */
    char_count++;
}

%%

int main(void){
    printf("Enter text input (Press Ctrl+D on a new line to finish): \n");
    yylex();

    printf("\n --Analysis Summary--\n");
    printf("Total Lines      : %d\n", line_count);
    printf("Total Words      : %d\n", word_count);
    printf("Total Characters : %d\n", char_count);
    printf("Total Vowels     : %d\n", vowel_count);
    printf("Total Consonants : %d\n", consonant_count);
   
    return 0;
}

int yywrap(void){
    return 1;
}
