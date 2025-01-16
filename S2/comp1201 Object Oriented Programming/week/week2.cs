namespace weekone;

public class week2
{
//避免overflow 可以用try catch...
//more specific way and add message to ask user
//Format, Overflow Exception
            
//byte 7 0000 0111 0~255
// ~7? --> 2's compliment!
// byte x2 =7;
//sbyte x2 =-7; 負號前面會加上s    
//Modify this code to collect and find the avg of 3 numbers
//make sure your program always show the write anser and its crash proof!
//test Subject ==> 221 ==>1.67
while (true){
    try {
        Console.WriteLine("Enter two integers");
        int num1 = Convert.ToInt32( Console.ReadLine());
        int num2 =Convert.ToInt32( Console.ReadLine());
        int num3 =Convert.ToInt32( Console.ReadLine());
                
        if (Int32.MaxValue < (long) num1 +num2 +num3 || Int32.MinValue < (long) num1 + num2+num3)
            throw new ArgumentOutOfRangeException("The result is out of range! or too big to be handled! try again");
        float avg = num1 / 3f + num2 / 3f + num3 / 3f;              
        
        //float result = (num1 + num2 + num3) /3F;
        //需要改成小數點3F，這樣才能呈現出小數，不然整數四則運算結果還是小數
    
        Console.WriteLine($"The result is {anything:F2}");
        break;
                
    }
    catch (FormatException ex) {
        console.WriteLine(ex.Message)
        Console.WriteLine("The input must be integer");
    }
    catch (OverflowException) {
        Console.WriteLine("This is to big!");
    }
    //這邊把訊息往上面放，這意會是較好的呈現
    catch(ArgumentOutOfRangeException ex){
        console.WriteLine(ex.Message)
    }
}
//example
while (true){
    try {
        Console.WriteLine("Enter two integers");
        int num1 = Convert.ToInt32( Console.ReadLine());
        int num2 =Convert.ToInt32( Console.ReadLine());
                
        if (Int32.MaxValue < (long) num1 +num2 || Int32.MinValue < (long) num1 + num2)
            throw new ArgumentOutOfRangeException("The result is out of range! or too big to be handled! try again");
                    
        var result = num1 + num2;
    
        Console.WriteLine($"The result is {result}");
        break;
                
    }
    catch (FormatException ex) {
        console.WriteLine(ex.Message)
        Console.WriteLine("The input must be integer");
    }
    catch (OverflowException) {
        Console.WriteLine("This is to big!");
    }
    //這邊把訊息往上面放，這意會是較好的呈現
    catch(ArgumentOutOfRangeException ex){
        console.WriteLine(ex.Message)
    }
}