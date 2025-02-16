namespace comp_1201_Object_Oriented_Programming1;

class Program
{
    static void Main(string[] args)
    {
        //week1.week1Main();
        //week2.week2Main();
        //week3.week3Main();
        //week4.week4Main();
        //Program.week5Main();
        //assignment1.MainMenu();                         
    }
    
    static void Main1(string[] args)
    {
        Student student1 = new Student(1, "John", "Doe", "Computer Science");
        Student student2 = new Student(2, "Jane", "AAA", "Culture Science");
        
        Console.WriteLine(student1.ToString());
        Console.WriteLine(student2.ToString());
    }
}