using DisplayingWithAjax.Models;
using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DisplayingWithAjax.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        //[HttpGet]
        public ActionResult GetData()
        {
            using (EmployeeOperationManagementSystemEntities db = new EmployeeOperationManagementSystemEntities())
         

            {
                List<Employee> employeeList = db.Employees.ToList<Employee>();
                return Json(new { data = employeeList }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}