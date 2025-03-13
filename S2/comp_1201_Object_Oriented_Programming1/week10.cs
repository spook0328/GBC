namespace comp_1201_Object_Oriented_Programming1;

public class week10
{
    // parrallel Arrays --> 2d arrays
    // parallel Arrays are arrays that they have a same size and each cell(item) of one array has a
    // corresponded correlated ) cell into another this lets you store different type correlated data seperately
    //which cam be processed together or exclusively.

    public static void week10Main()
    {
        // int[] stdId = { 1001000, 1002000, 1003000 };
        // string[] stdName = { "Wong", "Eric", "Jui-Hsin" };
        //
        // //double [] marks = { 99, 90, 90}; => Marks: {marks[i}"
        // //老師版本double[,] stdMarks = [3, 8] {
        //  {99, 90, 90, 20, 10, 30, 40, 50 },
        //  {99, 90, 90, 20, 10, 30, 40, 50 },
        //  {99, 90, 90, 20, 10, 30, 40, 50 } };
        // double[,] stdMarks = {
        // {99, 90, 90, 20, 10, 30, 40, 50 },
        // {93, 90, 90, 50, 10, 20, 40, 50 },
        // {92, 90, 90, 80, 10, 30, 45, 50 } };

        // --------------------------------------------
    
    Console.WriteLine("How many students would you like to enter: ");

    int numStd = Convert.ToInt32(Console.ReadLine());

    string[] javaCourseContent = { "Quizzes", "Lab Exercises", "Lab Test 1", "Lab Test 2",
        "Assignment 1", "Assignment 2", "Midterm", "Final" };
    float[] weight = { 0.08f, 0.07f, 0.1f, 0.1f, 0.1f, 0.1f, 0.2f, 0.25f };

    int[] stdId = new int[numStd];//代表要的stdID 會符合 numStd的數量
    string[] stdName = new string[numStd];
    double[] finalMarks = new double[numStd];
    double[,] stdMarks = new double[numStd, javaCourseContent.Length];
    
    //輸入學生資料
        for (int i = 0; i < numStd; i++)
    {
        Console.WriteLine($"Enter student #{i + 1} ID: "); //輸出i＋1
        stdId[i] = Convert.ToInt32(Console.ReadLine()); //拿取ＩＤ
        Console.WriteLine($"Enter student #{i + 1} Name: ");
        stdName[i] = Console.ReadLine();//拿取Ｎame

        for (int j = 0; j < javaCourseContent.Length; j++)
        {
            Console.WriteLine($"Enter {javaCourseContent[j]} Mark for {stdName[i]}: ");
            stdMarks[i, j] = Convert.ToDouble(Console.ReadLine());
        }
    }  
        
        //How do I calculate the final marks for each students?
        //FinalMark = quiz * qweight + ex * exweight ...
        //FinalMark = stdMarks[0,0] * weight[0] + stdMarks[0,1] * weight[1] ...

        double studentfinalMarks = 0;
        
        for (int i = 0; i < stdMarks.GetLength(0); i++)//返回二維陣列的第一行
        {
            Console.WriteLine($"Student Id: {stdId[i]}, Name: {stdName[i]}");
            for (int j = 0; j < stdMarks.GetLength(1); j++)
            {
                studentfinalMarks += stdMarks[i, j] * weight[j];
                Console.WriteLine($"\t {javaCourseContent[j]} = {stdMarks[i,j]}"); //\t ＝縮排
                
            }
            Console.WriteLine($"Your final Mark is : {finalMarks:f2}");
            finalMarks[i] = studentfinalMarks;
            
            Console.WriteLine("================================");
        }
            
            //the avg of the class, highest and lowest mark of the class!
            double add = 0;
            double highestMark = 0;
            double lowestMark = 100;
            int highestMarkLocation = 0;
            int lowestMarkLocation = 0;
                   
            for(int i =0; i<finalMarks.Length; i++)
            {
                //找尋最高分，如果當前學生的分數 finalMarks[i] 比 highestMark 還要高，那麼就將 highestMark 更新為當前學生的分數。
                //同時，將 highestMarkLocation 更新為當前學生的索引 i，這樣就知道最高分來自哪個學生。
                if (finalMarks[i] > highestMark) { highestMark = finalMarks[i]; highestMarkLocation = i; }
                //找尋最低分，同上。
                if (finalMarks[i] < lowestMark) { lowestMark = finalMarks[i]; lowestMarkLocation = i; }
                
                add += finalMarks[i];
            }
            Console.WriteLine($"The class avg is {add/finalMarks.Length:F2}");
            Console.WriteLine($"the highest mark is {stdName[highestMarkLocation]} with {highestMark:F2}");
            Console.WriteLine($"the lowest mark is {stdName[lowestMarkLocation]} with {lowestMark:F2}");

            //Print Student Data 
            // for (int i = 0; i < stdMarks.GetLength(0); i++) // picks each student 
            // {
            //     Console.WriteLine($"Student Id: {stdId[i]}, Name: {stdName[i]}");
            //     for (int j = 0; j < stdMarks.GetLength(1); j++)
            //     {
            //         Console.WriteLine($"\t {javaCourseContent[j]} = {stdMarks[i,j]}");
            //     }
            // }
    }
}
