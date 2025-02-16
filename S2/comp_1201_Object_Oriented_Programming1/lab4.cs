using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
	public class Student
	{
        private int id;
        private int birthYear;
        private string major;
        public string firstName;
        public  string lastName;

        public  Student() { }
        // 無參數建構，允許您在不提供任何參數的情況下創建 Student 物件。
        public  Student (int id, string firstName, string lastName, string major) 
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
        public override string ToString()
        {
            return $"ID: {id}, Name:{firstName} {lastName}, Major:{major}, Age:{getAge()}";
        }
    }

