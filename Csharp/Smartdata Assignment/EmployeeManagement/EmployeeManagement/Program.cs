using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using addEmployee;
using showEmployee;
using rmEmployee;

namespace EmployeeManagement
{
    

    class Program
    {
        static void Main(string[] args)
        {
            do
            {
                Console.WriteLine("------------------------Employee Managemnet Project-------------------------");
                Console.WriteLine("1:Add employee \n2:Remove employee \n3:Show employee \n4:Exit");
                Console.Write("Enter your Choice: ");
                int option = Convert.ToInt32(Console.ReadLine());
                switch(option)
                {
                    case 1: Console.Write("Type your Role(Analyst, Accountant, Engineer):");
                            
                        
                            string role = Console.ReadLine();
                            if(role.ToLower() == "analyst")
                            {
                                Console.WriteLine("\n");
                                Console.WriteLine("SUCCESS");
                                Console.WriteLine();
                                
                            }

                            else if (role.ToLower() == "accountant")
                            {
                                Console.WriteLine("SUCCESS");

                            }

                            else if (role.ToLower() == "engineer")
                            {
                                Console.WriteLine("SUCCESS");

                            }

                            else
                            {   
                                Console.WriteLine("ERROR");
                                Console.WriteLine("WARNING! YOU ARE NOT A AUTHORISED USER");
                                Console.WriteLine("Select any one of the three roles");
                                goto case 1;
                            }

                            break;

                    case 2: Console.WriteLine("Enter Employee ID of the Employee you want to remove:");
                            break;

                    case 3: Console.WriteLine("The employee Details are: ");
                            EmpData obj2 = new EmpData();
                            obj2.showEmp();
                            break;

                    case 4: break;

                    default: Console.WriteLine("You have entered an invalid choice");
                             break;
                }
            } while (false);
            Console.ReadLine();
        }
    }
}
