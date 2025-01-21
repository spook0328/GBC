// ATKLASS : M00C
/*
 * IPO ---> Input, Process, Output
 * Variable types and how to store primitive information
 * Input Valiation : Garbage In / Garbage Out 
 * 
 * ------------------------------------------
 * Object in real world? it's a thing, tangible, a physical entity
 * Object : elements that have 3 major char.
 * 1) Name
 * 2) Attb/Properties
 * 3) behavior/Function
 * --- UML===> Unified Modeling language
 * Monitor
 * Size, colour, price, ...
 * On() Off()
 * What is the difference b/w object in realworld and Object in
 * OOP?
 * 1) BankAccount
 * 2) balance, acc_name, branch
 * 3) deposit() withdraw() transfer()
 *  Class for modeling the object (Blue print an object)
 */ 

namespace WeekTwoo
{ 

    internal class Program
    {
        static void Main(string[] args)
        {
            // your program start here

            //======= How many type of variables we have?
            // its a memory allocation which can hold one peace of
            // information

            // integers (numbers)  7  --> 0111

            sbyte a = 5; // 1 byte // 8 bits   00000000
            short b = 6; // 2 byte 
            int c = 7;   // 4 byte (default integer) 32 bits
            long d = 8;  // 8 byte 

            // C# ---> you can declare variable dynamicly
            var e = 45;

            //=================== Decimal numbers============
            float f = 1.34F;  // 4 byte 32 bits
            double g = 3.56; // 8 byte (default)
            decimal h = 4.67M; // C# 16 byte

            var i = 3.5;
            // ---------------------------------------
            bool j = true;
            char k = 'g'; // word processing!  
            string l = "Hesam Akbari";
            //----------------------------------
            // a collection of characters in sequence (Immutable)
            // data structure : its a bundle of data

            // ALL THE INPUTS AND ALL THE OUTPUTS TO ALL THE
            // PROGRAMMING LANGUAGES ARE IN FORM OF STRINGS!

            // write a program to collect 2 integers and find 
            // the first integer cannot be bigger than 100 or less than -100?
            // the sum of them
            // 1) Syntax error 2) Logic 3) running time
            // What can go wrong in this program!
            // OverflowException // FormatException
            // change this to find the avg of 3 numbers! make sure it wont crash!

            Console.Beep();
            Console.ForegroundColor = ConsoleColor.Green;
            try
            {
                Console.WriteLine("Enter the first number");
                int num1 = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Enter the second number");
                int num2 = Convert.ToInt32(Console.ReadLine()); // "2"
                Console.WriteLine("Enter the three number");
                int num3 = Convert.ToInt32(Console.ReadLine()); // "2"

                // avg = (n1 + n2 + n3) / 3 --> n1/3 + n2/3 + n3/3
                // when you devid integer by integer result is an integer!
                double avg = num1/3.0 + num2/3.0 + num3/3.0;

                Console.WriteLine($"the result is {avg:F2}");
                    //Console.WriteLine(result);

            }
            catch (OverflowException e1) {
                Console.WriteLine(e1.Message);
                Console.WriteLine("The number is too big!"); }
            catch (FormatException) { Console.WriteLine("Input Must be an Integer"); }

        
           




        }
    }
}

