namespace comp_1201_Object_Oriented_Programming1;

public class lab6
{
    public static void lab6Main()
    {
        Console.WriteLine("How many student do you want to take?");
        int stu = Convert.ToInt32(Console.ReadLine());
        string[] CourseContent = { "Quizzes", "Lab Exercises", "Lab Test 1", "Lab Test 2",
            "Assignment 1", "Assignment 2", "Midterm", "Final" };
        float[] weight = { 0.08f, 0.07f, 0.1f, 0.1f, 0.1f, 0.1f, 0.2f, 0.25f };

        int[] stuId = new int[stu];
        string[] stuName =new string[stu];
        double[] finalMarks = new double[stu];
        double[,] stuMarks  = new double[stu, CourseContent.Length];
        
        //Enter Student Data
        for (int i = 0; i < stu; i++)
        {
            Console.WriteLine($"Enter stu number #{i+1} ID: ");
            stuId[i] = Convert.ToInt32(Console.ReadLine()); 
            Console.WriteLine($"Enter stu name #{i+1} name: ");
            stuName[i] = Console.ReadLine();
            for (int j = 0; j < CourseContent.Length; j++)
            {
                Console.WriteLine($"Enter {CourseContent[j]} Mark for {stuName[i]}: ");
                stuMarks[i, j] = Convert.ToDouble(Console.ReadLine());
            }
        }

        double stufinalMarks = 0;
        for (int i = 0; i < stuMarks.GetLength(0); i++)
        {
            Console.WriteLine($"Student Id: {stuId[i]}, Name: {stuName[i]}");
            for (int j = 0; j < stuMarks.Length; j++)
            {
                stufinalMarks += stuMarks[i, j] * weight[j];
                Console.WriteLine($"\t {CourseContent[j]} Mark for {stuMarks[i, j]}");
            }
            Console.WriteLine($"Your final mark is {stufinalMarks:f2}");
            finalMarks[i] = stufinalMarks;
            Console.WriteLine("======================================================");
        }

        double add = 0;
        double highestMark = 0;
        double lowestMark = 0;
        int highestLocation = 0;
        int lowestLocation = 0;
        for (int i = 0; i < finalMarks.Length; i++)
        {
            if (finalMarks[i] > highestMark) { highestMark = finalMarks[i]; highestLocation = i; }
            if (finalMarks[i] < lowestMark) { lowestMark = finalMarks[i]; lowestLocation = i; }
            add += finalMarks[i];
        }
        Console.WriteLine($"The class avg is {add/finalMarks.Length:F2}");
        Console.WriteLine($"the highest mark is {stuName[highestLocation]} with {highestMark:F2}");
        Console.WriteLine($"the lowest mark is {stuName[lowestLocation]} with {lowestMark:F2}");
    }
}