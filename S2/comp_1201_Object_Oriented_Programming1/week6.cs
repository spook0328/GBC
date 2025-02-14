using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// Encapsulation : make the attr private
// and access that only via public method(function)
// [setters/getters OR accessors/Mutator]
// What is the point of getters and setters function?
// can we just make those attr public and access them directly?
// 1) you control the accessabily
// 2) apply bussiness logic , on the attribute (if statement)

// Overridding : you override (change) the body of the exsiting function
namespace Week6
{
    internal class BankAccount
    {
        // the properties by defaults are private
        // overloading a method or function.. 
        // you have multiple function with the same name yet different arguments

        double balance;
        private string accName;
        string type;
        string bank;

        public int Id { get; set; }
        public double Balance { get => balance; set => balance = value; }
        public string AccName { get => accName; set => accName = value; }
        public string Type { get => type; set => type = value; }
        public string Bank { get => bank; set => bank = value; }

        public BankAccount() { } // non-arg consturctor // default()
        public BankAccount(int id, string accName, string type, string bank, double balance)
        {
            Balance = balance;
            AccName = accName;
            Type = type;
            Bank = bank;
            Id = id;
        }

        public BankAccount(int id, string accName, string bank)
        {
            Id = id;
            AccName = accName;
            Bank = bank;
            Type = "cheuqing";

        }

        public void Deposit(double ammt)
        {
            Balance += ammt;


        }

        public void Withdraw(double ammt)
        {
            if (ammt > Balance) { Console.WriteLine("Insufficent balance!"); }
            else { Balance -= ammt; }
        }


        public void PrintInfo()
        {
            Console.WriteLine($"Account # {Id}, Name : {AccName}, Type :{Type}" + $", Bank : {Bank} , Balance :{Balance}");

        }


        public override string? ToString()
        {
            return $"Account # {Id}, Name : {AccName}, Type :{Type}" + $", Bank : {Bank} , Balance :{Balance}";

        }
    }
}

