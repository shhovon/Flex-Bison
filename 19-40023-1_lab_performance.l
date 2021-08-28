%{
int semicolon=0;
int comma=0;
int fullstop=0;
int identifiers=0;
int line=1;
%}
 
%%
int {printf("%s - keyword \n", yytext);}
[;] {printf("%s - semicolon \n", yytext); semicolon++;}
[.] {printf("%s - fullstop \n", yytext);  fullstop++;}
[,] {printf("%s - comma \n", yytext); comma++;}
[a-zA-Z0-9]+ {printf("%s - identifier/word \n", yytext);identifiers++;}
[\n] {line++;}
. 
 
%%
 
int yywrap(){}
 
int main()
{
FILE *fp;
        fp = fopen("input.txt","r");
        yyin = fp;
		yylex();
		printf("\nNumber of semicolon:  %d\n", semicolon);
		printf("Number of fullstop:  %d\n", fullstop);
		printf("Number of comma:  %d\n", comma);
		printf("Number of identifier/word:  %d\n", identifiers);
		printf("Number of lines:  %d\n", line);
		return 0;
}