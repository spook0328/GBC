    //public static void CheckAge()
    //{
    //    Console.WriteLine("What is your age");
    //    int UserAge = int.Parse(Console.ReadLine());
    //    string AgeCategory = "";
    //    if (UserAge < 13)
    //    {
    //        AgeCategory = "Child";
    //        Console.WriteLine("Child");

    //    }
    //    else if (UserAge >= 13 && UserAge <= 19)
    //    {
    //        AgeCategory = "Teenager";
    //        Console.WriteLine("Teenager");
    //    }
    //    else
    //    {
    //        AgeCategory = "Adult";
    //        Console.WriteLine("Adult");
    //    }
    //    int LNumber = FavoriteNumber + NumberofSiblings;
    //    Console.WriteLine("Name:"+ Name);
    //    Console.WriteLine("Age Category" + AgeCategory);
    //    Console.WriteLine("Lucky Number:"+LNumber);
    //    //ProgramContinue();
    //}

    //public static void ProgramContinue()
    //{while (true) {
    //        Console.WriteLine("Do you want to  repeat the program (yes/no). ");
    //        string UserInput = Console.ReadLine();
    //        if (UserInput == "yes")
    //        {
    //            CheckAge();
    //        }else if (UserInput == "no")
    //        {
    //            Console.WriteLine("Exit the program");
    //            break;
    //        }
    //        else { Console.WriteLine("Bad input, please try again");  }
    //    }
    //}
    namespace Program;
public class practice
{
    static int NumberofSiblings = 1;
    static int FavoriteNumber = 1;
    static string Name = "JuiHsinWong";
    static int Age = 16;

    public static void PracticeMain()
    {
        CheckAge();
        ProgramContinue();
    }

    public static void CheckAge()
    {
        int UserAge;

        // 驗證年齡輸入
        while (true)
        {
            Console.WriteLine("What is your age");
            string input = Console.ReadLine();

            // 檢查空白輸入
            if (string.IsNullOrWhiteSpace(input))
            {
                Console.WriteLine("Age cannot be empty. Please try again.");
                continue;
            }

            // 檢查是否為正整數
            if (!int.TryParse(input, out UserAge) || UserAge <= 0)
            {
                Console.WriteLine("Please enter a valid positive number for age.");
                continue;
            }

            break;
        }

        string AgeCategory = "";
        if (UserAge < 13)
        {
            AgeCategory = "Child";
        }
        else if (UserAge >= 13 && UserAge <= 19)
        {
            AgeCategory = "Teenager";
        }
        else
        {
            AgeCategory = "Adult";
        }

        int LNumber = FavoriteNumber + NumberofSiblings;

        // 使用更友善的格式顯示結果
        Console.WriteLine("\nResults:");
        Console.WriteLine("------------------------");
        Console.WriteLine($"Name: {Name}");
        Console.WriteLine($"Age: {UserAge}");
        Console.WriteLine($"Age Category: {AgeCategory}");
        Console.WriteLine($"Lucky Number: {LNumber}");
        Console.WriteLine("------------------------\n");
    }

    public static void ProgramContinue()
    {
        while (true)
        {
            Console.WriteLine("Do you want to repeat the program (yes/no)?");
            string UserInput = Console.ReadLine()?.ToLower().Trim();  // 處理大小寫和空白

            // 檢查空白輸入
            if (string.IsNullOrWhiteSpace(UserInput))
            {
                Console.WriteLine("Input cannot be empty. Please try again.");
                continue;
            }

            if (UserInput == "yes")
            {
                CheckAge();
            }
            else if (UserInput == "no")
            {
                Console.WriteLine("Thank you for using the program. Goodbye!");
                break;
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter 'yes' or 'no'.");
            }
        }
    }
}
