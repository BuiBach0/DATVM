using DevApps.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DevApps.Areas.Admins.Controllers
{
    public class CompanyAddressController : Controller
    {
        BLOCKCHAINEntities db = new BLOCKCHAINEntities();
        // GET: Admins/COMPANY_ADDRESS
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GetDataJson()
        {
            var data = db.COMPANY_ADDRESS.ToList();
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddOrUpdate(COMPANY_ADDRESS itemInfor)
        {
            if (itemInfor.ID == 0)
            {
                db.Entry(itemInfor).State = EntityState.Added;
                db.SaveChanges();
            }
            else
            {
                db.Entry(itemInfor).State = EntityState.Modified;
                db.SaveChanges();
            }

            var data = db.COMPANY_ADDRESS.OrderBy(x => x.ID).ToList();

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteByID(int id)
        {
            var data = db.COMPANY_ADDRESS.Find(id);
            db.Entry(data).State = EntityState.Deleted;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
    }
}