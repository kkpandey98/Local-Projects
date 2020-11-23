using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace studentLibrary
{   
    public class StudentModelclass
    {
        public int RollNo { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        

    }
    public class Class1
    {
        List<StudentModelclass> Students = new List<StudentModelclass>
            {
                new StudentModelclass { RollNo=1,Name="Kakipa",Address="Palika Bazaar" };
    }
        
    }
}

