namespace comp_1201_Object_Oriented_Programming1;

public class Car
{
    private static int nextId = 0;
    private int carId;
    private string model;
    private string manufacturer;
    private double price;
    private double[] fuelEfficiencies;

    public int CarId => carId;
    public string Model
    {
        get => model;
        set => model = value ?? throw new ArgumentNullException(nameof(value));
    }
    public string Manufacturer
    {
        get => manufacturer;
        set => manufacturer = value ?? throw new ArgumentNullException(nameof(value));
    }
    public double Price
    {
        get => price;
        set => price = value;
    }
    public double[] FuelEfficiencies
    {
        get => fuelEfficiencies;
        set => fuelEfficiencies = value ?? new double[0];
    }

    public Car()
    {
        this.carId = nextId++;
        this.model = "Unknown";
        this.manufacturer = "Unknown";
        this.price = 0.0;
        this.fuelEfficiencies = new double[0];
    }

    public Car(string model, string manufacturer, double price)
    {
        this.carId = nextId++;
        this.model = model;
        this.manufacturer = manufacturer;
        this.price = price;
        this.fuelEfficiencies = new double[0];
    }

    public Car(string model, string manufacturer, double price, double[] fuelEfficiencies)
    {
        this.carId = nextId++;
        this.model = model;
        this.manufacturer = manufacturer;
        this.price = price;
        this.fuelEfficiencies = fuelEfficiencies ?? new double[0];
    }

    public double GetAverageFuelEfficiency()
    {
        return fuelEfficiencies.Length == 0 ? 0.0 : fuelEfficiencies.Average();
    }

    public override string ToString()
    {
        string fuelEffStr = fuelEfficiencies.Length > 0 ? string.Join(", ", fuelEfficiencies) : "No data";
        return $"Car ID: {carId}, Model: {model}, Manufacturer: {manufacturer}, Price: {price:C}\n" +
               $"Fuel Efficiencies: {fuelEffStr}";
    }
}

/*我寫的
public class Car
{
            private static int nextId = 0;
            private  int carId ;
            private string model  = "unknown";
            private string manufacturer = "unknown";
            private double price;
            private double[] fuelEfficiencies;
        
            public int CarId
            {
                get { return carId; }
            }
            public string Model
            {
                get => model;
                set => model = value ?? throw new ArgumentNullException(nameof(value));
            }
            public string Manufacturer
            {
                get => manufacturer;
                set => manufacturer = value ?? throw new ArgumentNullException(nameof(value));
            }
            public double Price
            {
                get => price;
                set => price = value;
            }
            public double[] FuelEfficiencies {       
                get => fuelEfficiencies;
                set => fuelEfficiencies = value ?? throw new ArgumentNullException(nameof(value)); 
            }
            
            
            我寫的
             Car(){carId = nextId++;}
             Car(string model, string manufacturer, double price)
             {
                 this.model = model;
                 this.manufacturer = manufacturer;
                 this.price = price;
             }
            
             Car(string Model, string Manufacturer, double Price, double[] FuelEfficiencies)
             {
                 this.Model = Model;
                 this.Manufacturer = manufacturer;
                 this.Price = price;
                 this.FuelEfficiencies = fuelEfficiencies;
             }
            我寫的
             public double GetAverageFuelEfficiency()
             {
                 Console.WriteLine("Car Average Fuel Efficiency");
                 return FuelEfficiencies.Average();
             }
             public override string ToString()
             {
                 if (fuelEfficiencies == null) return $"{carId}, Model: {this.Model}, Manufacturer: {this.Manufacturer}, Price: {this.Price}";
                 string output = $"{carId}, Model: {this.Model}, Manufacturer: {this.Manufacturer}, Price: {this.Price}";
                 output += $"\n========================================";
                 // foreach(car in fuelEfficiencies) output += "\t"+ e.ToString()+"\n";
                 return output;
             }
}
*/