using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace addEmployee
{
    public class EmpModel
    {
        public int EmpID { get; set; }
        public String EmpFname { get; set; }
        public String EmpLname { get; set; }
        public string Department { get; set; }
        public decimal Salary { get; set; }
        public string Address { get; set; }
        //public  EmpStatus { get; set; }

    }

    public class EmpData
    {
        public void showEmp()
        {
            List<EmpModel> emp1 = new List<EmpModel>
            {
                new EmpModel{ EmpID=1,EmpFname="Binny",EmpLname="Rogers",Department="Marketing",Salary=156355488,Address="New York Street" },
                new EmpModel{ EmpID=2,EmpFname="Bhawana",EmpLname="Pandey",Department="HR",Salary=158136488,Address="Vatican City" },
                new EmpModel{ EmpID=3,EmpFname="Virat",EmpLname="Singh",Department="BD",Salary=321455488,Address="Cerullian City" },
                new EmpModel{ EmpID=4,EmpFname="Mukul",EmpLname="Tewatia",Department="Project Manager",Salary=32695488,Address="Virdian City" },
                new EmpModel{ EmpID=5,EmpFname="Riyan",EmpLname="Parag",Department="Associate",Salary=985475488,Address="Pallet City" },
                new EmpModel{ EmpID=6,EmpFname="Unmukt",EmpLname="Chand",Department="Chairman",Salary=87455488,Address="Time Square" },
            };
        }

        public void addEmp()
        {
            //Console.Write("Add Data Entries to the list");
         
            //List<EmpModel> emp1 = new List<EmpModel>();
            //List<EmpModel> obj = new List<EmpModel>();
            //foreach (var x in newdata)
            //{
            //    emp1 = objBAL.emp1(x);
            //    obj.AddRange(emp1);
            //}
        }
    }
}
