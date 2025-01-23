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
            Testing d = new Testing()//you need to create an instance (object) from the class
            d.Message(); //non-static
            Testing.Message();
            
            Testing.Message2()// static
            console.WriteLine("Hello, world!");

            //--------------------
            //Guesing Game, in this game user try to guess a random number
            //between 1 to 100. the game provide feedbacks to the user till find
            //the number
        }
    }

}