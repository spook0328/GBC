namespace comp_1201_Object_Oriented_Programming1;

public class assignment1
{
	static string AssignmentMenu()
	{
		Console.WriteLine(("--Main Menu--"));
		Console.WriteLine(("1. Display information"));
		Console.WriteLine(("2. Manage date and time"));
		Console.WriteLine(("3. Handle text "));
		Console.WriteLine(("4. Exit the program"));
		Console.WriteLine(("-------------"));
		Console.WriteLine(("Enter 1, 2, 3 or 4"));
		return Console.ReadLine(); // collect this in a form of string!
	}

	public static void MainMenu()
	{
		while (true)
		{
			var choice = AssignmentMenu();
			if (choice == "1") { Information(); }
			else if (choice == "2") { DateTimeCalculate(); }
			else if (choice == "3") { HandleText(); }
			else if (choice == "4") { Console.WriteLine(("Exit the program")); break; }
			else
			{
				Console.WriteLine("Bad input, please try again");
			}

		}
	}

	public static string InformationMenu()
	{
		Console.WriteLine("------Display information-------");
		Console.WriteLine("Name: Jui Hsin Wong");
		Console.WriteLine("ID: 101559700");
		Console.WriteLine("=================");
		Console.WriteLine("Enter 1 go to previous menu");
			return Console.ReadLine();
	}

	public static void Information(){
		while(true){
		var choice = InformationMenu();
		if (choice=="1"){Console.WriteLine("Go back to previous menu");break;}
		else
			{
				Console.WriteLine("Bad input, please try again");
			}
		}
	}

	//public static void Information()
	//{
	//	int counter = 0;
	//	var randInt = new Random().Next(1, 100);
	//	while (true)
	//	{
	//		Console.WriteLine("Enter a number 1 to 100");
	//		var userInput = Convert.ToInt32(Console.ReadLine());
	//		if (userInput > randInt) Console.WriteLine("Guess something smaller");
	//		else if (userInput < randInt) Console.WriteLine("Guess something larger");
	//		else
	//		{
	//			Console.WriteLine($"Game is over! it took you {counter} time to guess the number"); break;
	//		}
	//	}
	//}

	//public static void TwoPlayers()
	//{
	//	Console.WriteLine("Enter name of two players");
	//	var p1name = Console.ReadLine();
	//	var p2name = Console.ReadLine();
	//	var turn = "";
	//	if (new Random().Next(1, 3) == 1) turn = p1name; else turn = p2name;
	//	var randInt = new Random().Next(1, 101);
	//	while (true)
	//	{
	//		Console.WriteLine($"{turn}---> guess something b/w 1 to 100");
	//		var userInput = Convert.ToInt32(Console.ReadLine());
	//		if (userInput == randInt) { Console.WriteLine($"{turn} is the winner"); break; }
	//		else if (userInput > randInt) { Console.WriteLine("guess something smaller"); }
	//		else
	//		{
	//			Console.WriteLine("guess something larger");
	//		}
	//		// change turn
	//		if (turn == p1name) turn = p2name; else turn = p1name;
	//	}
	//}


	private static string DateTimeMenu()
	{
		Console.WriteLine("------Date and Time Operations Menu-------");
		Console.WriteLine("1- Display Current Date and Time");
		Console.WriteLine("2- Add Days to Current Date");
		Console.WriteLine("3- Calculate Age from your birthdate");
		Console.WriteLine("4- Go back to previous menu");
		Console.WriteLine("=================");
		Console.WriteLine("Enter 1,2,3 or 4");
		return Console.ReadLine();
	}

	private static void DateTimeCalculate()
	{
		while (true)
		{
			var choice = DateTimeMenu();
			DateTime now = DateTime.Now;
			if (choice == "1" || choice == "2" || choice == "3" )
			{
				if (choice == "1") Console.WriteLine($"The current time and date is {now}");
				else if (choice == "2")
				{
					Console.WriteLine("How many Days you want to add?");
					var AddDate = int.Parse(Console.ReadLine());
					Console.WriteLine($"The date afrer adding {AddDate} days is {now.AddDays(AddDate)}");
				}
				else if (choice == "3")
				{ 
					Console.WriteLine("What is your birthday(yyyy/mm/dd)");
					if (DateTime.TryParse(Console.ReadLine(), out DateTime BirthDate))
					{
						DateTime now1 = DateTime.Now;
						int age = now1.Year - BirthDate.Year;
						if (now1 < BirthDate.AddYears(age))
						{
							age--;
						}
						Console.WriteLine($"Your age is {age}");
					}
					else
					{
						Console.WriteLine("You did not enter a valid date");
					}
				}
			}
			else if (choice == "4"){Console.Clear(); return;}
		}
	}

	private static string HandleTextMenu()
	{
		Console.WriteLine("------ Text Operations Menu-------");
		Console.WriteLine("1- Reverse Text");
		Console.WriteLine("2- Convert to Uppercase");
		Console.WriteLine("3- Convert to Lowercase");
		Console.WriteLine("4- Go back to previous menu");
		Console.WriteLine("=================");
		Console.WriteLine("Enter 1,2,3 or 4");
		return Console.ReadLine();
	}

	private static void HandleText()
	{
		while (true)
		{
			var choice = HandleTextMenu();// running the sub menu
			if (choice == "1" || choice == "2" || choice == "3"|| choice == "4")
			{
				if (choice == "1")
				{
					// Console.WriteLine("Enter the text you want to reverse");
					// string text1 = Console.ReadLine();
					// char[] textR = text1.ToCharArray();
					// Array.Reverse(textR);
					// Console.WriteLine("Reversed text: " + new string(textR));
					
					Console.WriteLine("Enter the text you want to reverse:");
					string text1 = Console.ReadLine() ?? ""; // 防止 null
						if (string.IsNullOrWhiteSpace(text1))
						{
							Console.WriteLine("You did not enter any text. Please try again.");
						}
						else
						{
							char[] textR = text1.ToCharArray();
							Array.Reverse(textR);
							Console.WriteLine("Reversed text: " + new string(textR));
						}
				}
				else if (choice == "2")
				{
					Console.WriteLine("Enter the text you want to Uppercase");
					string text2 = Console.ReadLine();
					string textU = text2.ToUpper();
					Console.WriteLine("Upper text: " + textU);
				}
				else if (choice == "3")
				{
					Console.WriteLine("Enter the text you want to Lowercase");
					string text3 = Console.ReadLine();
					string textL = text3.ToLower();
					Console.WriteLine("Lower text: " + textL);
				}
				else if (choice == "4") { Console.Clear(); return; }
			}
			else
			{
				Console.WriteLine("Bad input, please try again");
			}
		}
	}
}