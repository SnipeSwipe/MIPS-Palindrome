MIPS-Palindrome
===============

A small code for mips. Takes a number input and checks whether palindrome or not.

Based on the following C code-

int main()
{
   int n, reverse = 0, temp;
 
   printf("Enter a number to check if it is a palindrome or not\n");
   scanf("%d",&n);
 
   temp = n;
 
   while( temp != 0 )
   {
      reverse = reverse * 10;
      reverse = reverse + temp%10;
      temp = temp/10;
   }
 
   if ( n == reverse )
      printf("Yes");
      printf("No\n");
 
   return 0;
}
