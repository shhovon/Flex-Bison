#include <stdio.h>
#include <stdlib.h>


int main()
{
    FILE * fPtr;

    char ch;
    int lines=0, characters=0;
    fPtr = fopen("code.txt", "r");

    if(fPtr == NULL)
    {
        printf("Unable to open file.\n");
        exit(0);
    }
    printf("\n");
    do 
    {
        ch = fgetc(fPtr);
        putchar(ch);
        if (ch == '\n' || ch == '\0')
        {
            lines++;
        }
        if(characters>lines)
        {
            lines++;
        }
        
    }
    while(ch != EOF);

    printf("\nTotal lines= %d\n", lines);
    //printf("\nWords Starting with letter 'T': %d\n");
    printf("\n");

    fclose(fPtr);


    return 0;
}