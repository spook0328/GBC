namespace comp_1201_Object_Oriented_Programming1;

public class week4
{
     static string week4Menu()
    {
        Console.WriteLine(("--Main Menu--"));
        Console.WriteLine(("1. play a guessing game"));
        Console.WriteLine(("2. Calculation"));
        Console.WriteLine(("3. Exit the program"));
        Console.WriteLine(("-------------"));
        Console.WriteLine(("Enter 1, 2, or 3"));
        return Console.ReadLine(); // collect this in a form of string!
    }

    public static void SinglePlayer()
    {
        int counter = 0;
        var randInt = new Random().Next(1, 100);
        while (true)
        {
            Console.WriteLine("Enter a number 1 to 100");
            var userInput = Convert.ToInt32(Console.ReadLine());
            if (userInput > randInt) Console.WriteLine("Guess something smaller");
            else if (userInput < randInt) Console.WriteLine("Guess something larger");
            else
            {
                Console.WriteLine($"Game is over! it took you {counter} time to guess the number"); break;
            }
        }
    }

   public static void week4Main()
    {
        while (true)
        {
            var choice = week4Menu();
            if (choice == "1") { PlayGuessingGame();}
            else if(choice =="2") { Calculation(); }
            else if(choice == "3") {Console.WriteLine(("Exit the program"));break;}
            else
            {
                Console.WriteLine("Bad input, please try again");
            }

        }
    }
    private static void Calculation() {}
    
    private static void PlayGuessingGame(){}
}