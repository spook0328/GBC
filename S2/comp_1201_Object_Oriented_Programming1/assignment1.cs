namespace comp_1201_Object_Oriented_Programming1;

public class week4
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

	public static void AssignmentMenu()
	{
		while (true)
		{
			var choice = week4Menu();
			if (choice == "1") { Information(); }
			else if (choice == "2") { DateTime(); }
			else if (choice == "3") { HandleText(); }
			else if (choice == "4") { Console.WriteLine(("Exit the program")); break; }
			else
			{
				Console.WriteLine("Bad input, please try again");
			}

		}
	}

	public static string Information()
	{
		Console.WriteLine("------Display information-------");
		Console.WriteLine("Name: Jui Hsin Wong");
		Console.WriteLine("ID: 101559700");
		Console.WriteLine("=================");
		Console.WriteLine("Enter 1 go to previous menu");
			return Console.ReadLine();
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


	private static string DateTime()
	{
		Console.WriteLine("------Date and Time Operations Menu-------");
		Console.WriteLine("1- Display Current Date and Time");
		Console.WriteLine("2- Add Days to Current Date");
		Console.WriteLine("3- Calculate Age from Birthdate");
		Console.WriteLine("4- Go back to previous menu");
		Console.WriteLine("=================");
		Console.WriteLine("Enter 1,2,3 or 4");
		return Console.ReadLine();
	}

	private static void DateTime()
	{
		while (true)
		{
			var choice = CalculationMenu();
			if (choice == "1" || choice == "2" || choice == "3" || choice == "4")
			{
				Console.WriteLine("Enter two numbers");
				var num1 = int.Parse(Console.ReadLine());
				var num2 = int.Parse(Console.ReadLine());

				if (choice == "1") Console.WriteLine($"The summation of {num1}and{num2}is {num1 + num2}");
				else if (choice == "2") Console.WriteLine($"The subbtraction of {num1}and{num2}is {num1 - num2}");
				else if (choice == "3") Console.WriteLine($"The Multiply of {num1}and{num2}is {num1 * num2}");
				else if (choice == "4")
				{
					if (num2 != 0)
						Console.WriteLine($"The division of {num1} and {num2} is {num1 / num2}");
					else
						Console.WriteLine($"The division of {num1} and {num2} is UNDEFINED");
				}
				else
				{
					Console.WriteLine("Bad input, please try again");
				}
				// if (choice =="4") Console.WriteLine($"The Divide of {num1}and{num2}is {num1/num2}");
			}
			else if (choice == "5") return;
		}
	}

	private static string HandleText()
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
			var choice = GameMenu();// running the sub meny
			if (choice == "1") { SinglePlayer(); }
			else if (choice == "2") { TwoPlayers(); }
			else if (choice == "3") { Console.Clear(); return; }
			else
			{
				Console.WriteLine("Bad input, please try again");
			}
		}
	}
}