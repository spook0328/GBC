using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
	public class lab5 
	{
        internal class Person
        {

            private static int personCount = 0;
            public int PersonID { get; }
            public string Name{ get; set; }
            public int Age{ get; set; }

            
            public Person() { PersonID = ++personCount;}
           
            public Person(string name, int age)
            {
                PersonID = ++personCount;
                Name = name;
                Age = age;
            }

            public override string ToString()
            {
                return $"PersonID:{PersonID} Name:{Name} Age:{Age}";
            }
                
        }
        
        internal class Team
        {
            private static int teamCount = 0;
            public int TeamID { get; }
            public string TeamName{ get; set; }
            public Person Captain{ get; set; }

            
            public Team() {TeamID = ++teamCount; }
            public Team( string teamName)
            {
                TeamID = ++teamCount;
                TeamName = teamName;
            }

            public void SetCaptain(Person captain)
            {
                Captain = captain;
            }
            

            public override string ToString()
            {
                return $"Team ID: {TeamID}, Team Name: {TeamName}, Captain: {(Captain != null ? Captain.Name : "No Captain Assigned")}";
            }
            
        }

    }

