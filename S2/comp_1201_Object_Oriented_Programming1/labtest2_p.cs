public class product
{
    private static int nextId = 0;// Optional auto incremnet
    private int productId;
    private string name;
    private double price;

    public product (string name, double price)
    {
        this.productId = nextId++;
        this.name = name;
        this.price = price;
    }

    public void ApplyDiscount(double p)
    {
        double discount = price * (p/100);
        price -= discount;
    }

    public void DisplayProduct()
    {
        Console.WriteLine($"ID: {productId}, Name: {name}, Price: {price:C}"); 
        // Price: C代表貨幣格式
    }
}