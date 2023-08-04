%{
%}
%%
<INITIAL>[0-9]+ {printf("Integer\n");}
<INITIAL>[0-9]+[.][0-9]+ {printf("Float\n");}
<INITIAL>[A-Za-z0-9_]* {printf("Identifier\n");}
<INITIAL>[^\n] {printf("Invalid\n");}
%%
int yywrap(){}
int main()
{
printf("Enter String\n");
yylex();
return 0;
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex constants.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
Enter String
1089655
Integer
