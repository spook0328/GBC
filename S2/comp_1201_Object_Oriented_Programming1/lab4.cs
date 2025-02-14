using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class lab4
{
	public lab4Main()
	{
        private int id;
        private int birthYear;
        private string major;
        public string firstName;
        public  string lastName;

    public  student() { }

    public  student(int id, string firstName, string lastName, string major)
    {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.major = major;
    }
     public int getAge()
    {
        return DateTime.Now.Year - birthYear;
    }
     public override string ToString(){
        return $"ID: {id}, Name:{firstName} {lastName}, Major:{major}, Age:{getAge()}";
    }
    }
}
