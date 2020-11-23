using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text.RegularExpressions;
using System.Text;
using System;

namespace ConsoleApp1 { 
    class Solution
    {

        // Complete the staircase function below.
        static void staircase(int n)
        {
            Console.WriteLine();
            for (int i = 1; i <= n; i++)
            {
                for (int j = 1; j <= n; j++)
                {
                    if (j <= n - i)
                    {
                        
                        Console.Write(" ");
                    }
                    else
                    {
                        Console.Write("#");
                    }
                }
                Console.WriteLine();
            }
            
        }

    

        static void Main(string[] args)
        {
            Console.Write("Enter the degree of staircase: ");
            int n = Convert.ToInt32(Console.ReadLine());

            staircase(n);

            Console.Read();
        }
        
    }
}



