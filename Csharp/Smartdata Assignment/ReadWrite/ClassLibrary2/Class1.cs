using System;
using System.IO;

namespace ReadToFile
{
    public class Class1
    {
        public void Read()
        {
            string fileName = @"C:\Users\Kamal Pandey\Desktop\Textfile.txt";


            // Display the file contents by using a foreach loop.
            // Read a file  

            using (StreamReader sr = File.OpenText(fileName))
            {
                string s = "";
                while ((s = sr.ReadLine()) != null)
                {
                    Console.WriteLine(s);
                }
            }

        }

    }

}
