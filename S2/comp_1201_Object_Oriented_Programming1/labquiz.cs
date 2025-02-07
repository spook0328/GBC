using System.Diagnostics.CodeAnalysis;
using System.Globalization;

namespace ConsoleApp1;

class Program
{
    static void Main()
    {
        InputName();
        // return;
         // Implement();
        // Programloop();
    }
    public static string Name = "";
    public static double Height = 0;
    public static double Weight = 70.0;
    public static int Language = 3;

    public static void InputName()
    {
        while (true)
        {
            Console.WriteLine("What is your name?");
            Name = Console.ReadLine();
            if (Name=="")
            {
                Console.WriteLine("Can't be emptey. Wrong input try again");
            }
            else
            {
                InputHeight(); 
            }
        }
        
    }

    public static void InputHeight()
    {
        while (true)
        {
            Console.WriteLine("What is your height?");
            Height = double.Parse(Console.ReadLine());
            if (Height == 0 )
            {
                Console.WriteLine("Wrong input try again");
            }else if (Height <0 )
            {
                Console.WriteLine("Wrong input try again");
            }
            else if (Height > 250)
            {
                Console.WriteLine("The number is too huge. Try again");
            }
            else
            {
                InputWeight();
            }
        }
    }

    public static void InputWeight()
    {
        while (true)
        {
            Console.WriteLine("What is your weight?");
            Weight = double.Parse(Console.ReadLine());
            if (Weight == 0 )
            {
                Console.WriteLine("Wrong input try again");
            }else if (Weight < 0)
            {
                Console.WriteLine("Wrong input try again");
            }else if (Weight >200)
            {
                Console.WriteLine("The number is too huge. Try again");
            }
            else
            {
                InputLanguage();
            }
        }
    }

    public static void InputLanguage()
    {
        while (true)
        {
            Console.WriteLine("How many language you can speak?");
            Language = int.Parse(Console.ReadLine());
            if (Language == 0)
            {
                Console.WriteLine("Wrong input try again");
            }
            else
            {
                Implement();
            }
        }
    }
    public static void Implement()
    {
         double NewHeight = Height/100;
         Console.WriteLine(NewHeight);
         string Lspeak = "";
         double Bmi = Weight/(NewHeight*NewHeight);
         
         if (Language == 1)
         {
             Lspeak = "Beginner";
             // Console.WriteLine("Beginner");
         }else if (Language == 2)
         {
             Lspeak = "Bilingual";
             // Console.WriteLine("Bilingual");
         }else if (Language == 0)
         {
             Console.WriteLine("Wrong input try again");
         }
         else
         {
             Lspeak = "Polyglot";
             // Console.WriteLine("Polyglot");
         }
        Console.WriteLine("========Output===========");
        Console.WriteLine("Name: "+ Name);
        Console.WriteLine("BMI: "+ Bmi);
        Console.WriteLine("Language Proficiency: "+ Lspeak);
        Programloop();
    }

    public static void Programloop()
    {
        while (true)
        {
            Console.WriteLine(" Do you want to repeat the program (yes/no).");
            string Input = Console.ReadLine();
            if (Input == "yes")
            {
                InputName();
            }else if (Input == "no")
            {
                Console.WriteLine("Goodbye");
                Environment.Exit(0);    
                break; 
            }
            else
            {
                Console.WriteLine("Wrong input");
            }
        }
    }
}