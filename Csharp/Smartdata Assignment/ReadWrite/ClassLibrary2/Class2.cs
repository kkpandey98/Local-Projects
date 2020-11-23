using System;
using System.Collections.Generic;
using System.Text;
using System.IO;


namespace WriteToFile
{
     public class Class2
    {
        public void Write()
        {

            string fileName = @"C:\Users\Kamal Pandey\Desktop\Textfile.txt";

            try
            {
                // Check if file already exists. If yes, delete it.     
                if (File.Exists(fileName))
                {
                    File.Delete(fileName);
                }

                // Create a new file     
                using (StreamWriter sw = File.CreateText(fileName))
                {
                    sw.WriteLine("New file created: {0}", DateTime.Now.ToString());
                    sw.WriteLine("Author: Kakipa");
                    sw.WriteLine("Add one more line ");
                    sw.WriteLine("Add one more line ");
                    sw.WriteLine("Done! ");
                }

                // Write file contents on console.     
                using (StreamReader sr = File.OpenText(fileName))
                {
                    string s = "";
                    while ((s = sr.ReadLine()) != null)
                    {
                        Console.WriteLine(s);
                    }
                }
            }
            catch (Exception Ex)
            {
                Console.WriteLine(Ex.ToString());
            }
        }
    }
}
