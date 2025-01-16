namespace weekone
{
    class Program
    {
        static void Main(string[] args)
        {
            //避免overflow 可以用try catch...
            //more specific way and add message to ask user
            //Format, Overflow Exception
            
            //byte 7 0000 0111 0~255
            // ~7? --> 2's compliment!
            byte x2 =7;
            sbute x2 =-7;
            try {
            Console.WriteLine("Enter two integers");
            int num1 = Convert.ToInt32( Console.ReadLine());
            int num2 =Convert.ToInt32( Console.ReadLine());
            
            var result = num1 + num2;

            Console.WriteLine($"The result is {result}");
            }
            catch (FormatException) {
                Console.WriteLine("The input must be integer");
            }
            catch (OverflowException) {
                Console.WriteLine("This is to big!");
            }
        
        }
    }
}