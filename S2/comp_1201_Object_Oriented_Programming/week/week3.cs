namespace consoleApp1
{
    //namespaces --> class(s)
    //functions heding include the following information

    //1) privaicy --> private, protecteced, public
    //public --> it's accessable from everywhere
    //private --> it can be only used within its own class!
    //protecteced --> its accessable via classes that have a relationship with each other!

    //2Accessability --> static , non-static!
    // classes can be used as a manager to contain and manage bunch of telated functions and
    // properties or can be used as a model (data structure) for your data (objects)
    // static --> this function (method) can be accessed through the class directly!

    class Testing{
        int x =1;
       public static void Message() {}        
            public static void Message(){

                Message();

            }
    }

    public class Testing2
    
    internal class Program{

        static void Main(string[] args)
        {
            Testing d = new Testing();//you need to create an instance (object) from the class
            d.Message(); //non-static
            Testing.Message();
            
            Testing.Message2(); // static
            console.WriteLine("Hello, world!");

            //--------------------
            //Guesing Game, in this game user try to guess a random number
            //between 1 to 100. the game provide feedbacks to the user till find that number
            //the game provides hints to the user till the number is found!

            //then the game indicates how many times took for the user to guess
            //the number! if the input number is bigger than random number then 
            //computer provide feedback such as guess something smaller and ask again and 
            //if the input number is smaller than random number then 
            //computer provide feedback such as guess something bigger and ask again 
            // ------------------
            //Alter the game to two player game which the player alternatively try to find the 
            // random number. Whoever find the number first win the game!
            //1) collect the user names!
            // hint : have a variable called 'turn' which keeps track  of the turn of players
            // extra hint : you need to change the turn after each guess!
            // EXTRA : since player 1 has dasadvantage over player 2 is better to start who begins the game
            //random...


           int randNum = new Random(). Next(1, 101);
           int userInput;
           int counter = 0;
           int lower = 1;
           int upper = 100;
           while (true)
           {
                console.WriteLine("Enter a number between {lower} to {upper}");
                userInput = Convert.ToInt32(console.ReadLine()); counter++;

                if (randNum > userInput) { Console.WriteLine("guess something bigger!");
                    if (userInput < lower) lower = userInput; }
                else if (randNum < userInput) { console.WriteLine("guess somthing smaaler!"); 
                    if (userInput > upper) upper = userInput; }
                else {
                    Console.WriteLine("Bingo, it took you {counter} time to guess it");break;
                }
           }

        //    console.WriteLine("Enter a number between 1 to 100");
        //    int userInput = Convert.ToInt32(console.ReadLine());

        //    //ranNum > userInput , userInput > ranNum , userInput == ranNum
        //    while(userInput != randNum){

        //     if (randNum > userInput){
        //         console.WriteLine("guess something bigger!");
        //     }else { console.WriteLine("guess something smaller!");}

        //     consoleApp1.WriteLine("Enter a number between 1 to 100");
        //     userInput = Convert.ToInt32(console.ReadLine());


        //    }
        //    Console.WriteLine("Bingo");
        // }
    }

}