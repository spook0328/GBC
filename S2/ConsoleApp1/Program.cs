namespace ConsoleApp1;

class Week3
{
    static void wk3(string[] args)
    {
        int randNum = new Random(). Next(1, 101);
        int userInput; int counter = 0; int lower = 1; int upper = 100;
        while (true)
        {
            Console.WriteLine($"Enter a number between {lower} to {upper}");
            userInput = Convert.ToInt32(Console.ReadLine()); counter++;

            if (randNum > userInput) { Console.WriteLine("guess something bigger!");
                if (userInput > lower) lower = userInput; }
            else if (randNum < userInput) { Console.WriteLine("guess somthing smaler!"); 
                if (userInput < upper) upper = userInput; }
            else {
                Console.WriteLine($"Bingo, it took you {counter} time to guess it");break;
            }
        }
    }
}

class Week3practice
{
    static void Wk3practice(string[] args)
    {
        int randNum = new Random(). Next(1, 101);
    }
}