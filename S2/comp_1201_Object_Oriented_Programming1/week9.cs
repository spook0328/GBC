namespace comp_1201_Object_Oriented_Programming1;
//Review of Classes:
//Aggregations
//Optimizing the class models.
//Class --> bundle for relavent parametes and methods...
//      --> Blueprint(model) of an Instance(object)!
//Object --> it has 3 major char. 1,Name 2,attr/prop 3,function/behavior
//URL
public class week9
{
    // Constructors建構子（建立物件）, Overloading多載, Overriding覆寫, Encapsulation封裝（透過不同層級包裝及保護資料）
    // Encapsulation => accessing private data through public functions.
    // make the data private and budle it with public function(methods)
    internal class Employee
    {
        private static int generatorID = 0;
        private int id;
        //private string name;
        private string fname;
        private string lname;
        private Address address;
        private Employee[] subordinates;
        
        //public private這邊是示範只能存在一種
        
        public int Id { get => id;}
        //public string Name { get => name; set => name = value; }
        public string firstname { get => fname; set => fname =value;}
        public string lastname { get => lname; set => lname =value;}
        public Address Address { get => address; set => address = value; }
        public Employee[] Subordinates { get => subordinates; set => subordinates = value; }
        
        // overloaded the constructor : to create multiple function with the same name yet different argumnet
        public Employee(){id = ++generatorID;} //defualt, non-arg constructor
        
        // -- 1
        // public Employee(int id, string name, string address)
        // {
        //     this.id = id;
        //     this.name = name;
        //     this.address = address;
        // }
        
        // -- 2
        public Employee(int id, string fame, string lname, Address address)
        {
            this.id = ++generatorID;
            this.fname = fname;
            this.lname = lname;
            this.address = address;
        }
        // -- 3
        public Employee(int id, string fname, string lname, Address address, Employee[] subordinates)
        {
            this.id = ++generatorID;
            this.fname = fname;
            this.lname = lname;
            this.address = address;
            this.subordinates = subordinates;
        }
        
        
        //override : change the body of an existing function..
        //Override2
            // public override string ToString()
            // {
            //     return $"Employee ID: {id} , Name: {fname}, {lname}, Address: {address}";
            // }
        //override3
        public override string? ToString()
        {
            if (subordinates == null) return $"Employee({id}, {fname}, {lname}, {address})";
            
            string output = $"Employee({id}, {fname}, {lname}, {address})";
            
            output += $"\n========Subordinatnts of {fname }==========";
            
            foreach (Employee e in subordinates) output += "\t" + e.ToString() + "\n"; 
            return output;
        }
    }
    
    internal class Address
    {
        public Address(int streetNumber, string streetName, string city, string province)
        {
            StreetNumber = streetNumber;
            StreetName = streetName;
            City = city;
            Province = province;
        }

        public int StreetNumber { get; set; }
        public string StreetName { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        
        public override string? ToString()
        {
            return $"Address : {StreetNumber}, {StreetName}, {City}, {Province},";
        }
    
    }
    
}