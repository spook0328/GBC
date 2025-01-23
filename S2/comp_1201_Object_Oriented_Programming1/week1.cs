namespace comp_1201_Object_Oriented_Programming1;

public class week1
{
    public static void week1Main()
    {
        //IPO ----Input process Output
            //Variables! ------------- (How many type of variables we have?)

            //Integer --->7

            byte a = 5;  //1 Byte or 8bits
            short b = 6; //2 Bytes or 16 bits
            int c = 7;   //4 Bytes or 32bits
            long d = 8;  //8 Bytes
            //the default size of int is 4 Byte

            var e = 9; // dynamic allocation of variable to Int32
            //---------floating point notation(decimal)
            // explicit convertion(Type cast)
            float f = (float)6.7; //4Byte, 6.7F also can present that 
            double g = 4.5;// 8Byte
            decimal h = 67.7M;//16 Byte

            //----------------
            bool j = true;//1/0

            char k = 'A'; //single quotation ASCII
            //collection of characters in sequence!
            // data structure : its a collection of information in a 
            //structed way
            string name = "Wong";
            //All the inputs and all the outputs to all the programming 
            //languages are inform of strings
            
                       
            //Inform of strings
            //Errors:
            //1) Syntax Errow : following programming rules (program won't run)
            //2) Run time errors: it may happens while a program is running.
            //3) Logical errors: program runs yet the output is not what you expected!
            // Write a program to collect 2 integers and add them
            
            //It will be String we need change to Int 
            Console.WriteLine("Enter First integers");
            var num1 = Console.ReadLine();
            Console.WriteLine("Enter two integers");
            var num2 = Console.ReadLine();
            Console.WriteLine(num1 + num2); // 5+2 =52
            //The correct way to write
            Console.WriteLine("Enter First integers");
            int num3 = Convert.ToInt32( Console.ReadLine());
            Console.WriteLine("Enter two integers");
            int num4 =Convert.ToInt32( Console.ReadLine());

            Console.WriteLine(num1 + num2);//5+2=7
            //避免overflow 可以用try catch...
            //more specific way and add message to ask user
            //Format, Overflow Exception
            try {
            
            Console.WriteLine("Enter First integers");
            int num5 = Convert.ToInt32( Console.ReadLine());
            Console.WriteLine("Enter two integers");
            int num6 =Convert.ToInt32( Console.ReadLine());

            Console.WriteLine(num1 + num2);
            }
            catch (FormatException) { Console.WriteLine("The input must be integer"); }
            catch (OverflowException) { Console.WriteLine("This is to big!"); }
        
    }
}