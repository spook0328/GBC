namespace comp_1201_Object_Oriented_Programming1;

class Program
{
    //lab
    static void Main1(string[] args)
    {
        //week1.week1Main();
        //week2.week2Main();
        //week3.week3Main();
        //week4.week4Main();
        //Program.week5Main();
        //assignment1.MainMenu(); 
        //week10.week10Main();
    }
}

/* labtest2

    static void Main(string[] args)
    {
        Car [] garage = new Car[3];
        garage[0] = new Car();
        garage[1] = new Car("Civic", "Honda", 25000);
        garage[2] = new Car("Model S", "Tesla", 79999, new double[] { 120, 115, 130 });

        foreach (var car in garage)
        {
            Console.WriteLine(car.ToString());
            Console.WriteLine($"Average Fuel Efficiency: {car.GetAverageFuelEfficiency()} MPG\n");
        }

        // 額外功能：按價格排序
        Array.Sort(garage, (c1, c2) => c1.Price.CompareTo(c2.Price));
        Console.WriteLine("Cars sorted by price:");
        foreach (var car in garage)
        {
            Console.WriteLine(car.ToString());
        }
    }
    //我寫的
    class Program
    {
        static void Main(string[] args)
        {
            Car[] gararge = new Car[3];
            Car car1 = new Car();
            Car car2 = new Car("abc", "def", 2000);
            Car car3 = new Car("abc", "def", 2000,[2,0]);
            
            Console.WriteLine(car1.ToString());
            Console.WriteLine(car2.ToString());
            Console.WriteLine(car3.ToString());

        }
    }
*/
/*lab_test2 practice
      static void Main(string[] args)
      {
          Product[] inventory = new Product[5];
          int count = 0;
          while (true)
          {
              Console.WriteLine("1. Add Product");
              Console.WriteLine("2. List Products");
              Console.WriteLine("3. Apply Discount to All Products");
              Console.WriteLine("4. Exit");
              Console.Write("Choose an option: ");
              string choice = Console.ReadLine();
              switch (choice)
              {
                  case "1":
                      if (count < inventory.Length)
                      {
                          Console.Write("Enter product name: ");
                          string name = Console.ReadLine();
                          Console.Write("Enter product price: ");
                          double price = double.Parse(Console.ReadLine());
                          inventory[count] = new Product(name, price);
                          count++;
                      }
                      else
                      {
                          Console.WriteLine("Inventory is full.");
                      }
                      break;
                  case "2":
                      Console.WriteLine("Product List:");
                      for (int i = 0; i < count; i++)
                      {
                          inventory[i].DisplayProduct();
                      }
                      break;
                  case "3":
                      Console.Write("Enter discount percentage: ");
                      double percentage = double.Parse(Console.ReadLine());
                      for (int i = 0; i < count; i++)
                      {
                          inventory[i].ApplyDiscount(percentage);
                      }
                      break;
                  case "4":
                      return;
                  default:
                      Console.WriteLine("Invalid option. Try again.");
                      break;
              }
          }
      }
 */
/* week6 lab array
       static void Main1(string[] args)
       {
           Student student1 = new Student(1, "John", "Doe", "Computer Science");
           Student student2 = new Student(2, "Jane", "AAA", "Culture Science");
           
           Console.WriteLine(student1.ToString());
           Console.WriteLine(student2.ToString());
       }*/
/* week9 lab1 array
    static void Main(string[] args)
    {
   week9.Employee employee = new week9.Employee(1, "Jui Wong","1 Dundas we st, Toronto, ON");
   Console.WriteLine(employee);

    week9.Address addr = new week9.Address(123, "Main St", "Toronto", "Ontario");
    week9.Employee emp1 = new week9.Employee(1, "John", "Doe", addr);
    week9.Employee emp2 = new week9.Employee(2, "J", "D", addr);
    week9.Employee emp3 = new week9.Employee(3, "E", "D", addr);
    Console.WriteLine(emp1.ToString());
    week9.Employee[] employees = {emp1, emp2, emp3};
    foreach (var emp in employees)
    { Console.WriteLine(emp); }

    // 建立 Address 物件
    week9.Address addr = new week9.Address(123, "Main St", "Toronto", "Ontario");
    // 建立 Employee 物件
    week9.Employee emp1 = new week9.Employee(1, "John", "Doe", addr);
    week9.Employee emp2 = new week9.Employee(2, "J", "D", addr);
    // 建立主管 Employee（包含部屬 emp1, emp2）
    week9.Employee supervier1 = new week9.Employee(3, "Test", "Practice", 
        new week9.Address( 321, "ABC","Taipei","ON"), 
        [emp1,emp2, new week9.Employee(4,"temp", "N/A", null)]);
    // 建立 Employee 列表
    week9.Employee[] employee = {emp1, emp2, supervier1};
    // 印出所有員工資訊
    foreach (var emp in employee)
    {
        if (emp.Address.City == "Taipei")
        {
            Console.WriteLine(emp);
        }
    }
 */
/* week9 lab2
   static void Main(string[] args)
   {
       lab5.Person p1 = new lab5.Person("John",12);
       lab5.Person p2 = new lab5.Person("Cena",22);
       lab5.Team t1 = new lab5.Team("George");
       lab5.Team t2 = new lab5.Team("brown");
    
       
       t1.SetCaptain(p1);
       Console.WriteLine(p1.ToString());
       Console.WriteLine(p2.ToString());
       Console.WriteLine(t1.ToString());
       Console.WriteLine(t2.ToString());
   }
 */
