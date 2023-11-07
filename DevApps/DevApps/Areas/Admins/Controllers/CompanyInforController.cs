using DevApps.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DevApps.Areas.Admins.Controllers
{
    public class CompanyInforController : Controller
    {
        BLOCKCHAINEntities db = new BLOCKCHAINEntities();
        // GET: Admins/Banner
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GetDataJson()
        {
            var data = db.COMPANY_INFOR.ToList();
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddOrUpdate(COMPANY_INFOR itemInfor)
        {
            if (itemInfor.ID == 0)
            {
                if (itemInfor.CREATED_DATE == null)
                    itemInfor.CREATED_DATE = DateTime.Now;
                itemInfor.ADMIN_UPDATED = "Admin";
                db.Entry(itemInfor).State = EntityState.Added;
                db.SaveChanges();
            }
            else
            {
                COMPANY_INFOR item = itemInfor as COMPANY_INFOR;
                if (itemInfor.CREATED_DATE == null)
                    itemInfor.CREATED_DATE = DateTime.Now;
                if (item.ADMIN_CREATED == null)
                    item.ADMIN_UPDATED = "Admin";
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
            }

            var data = db.COMPANY_INFOR.OrderBy(x => x.ID).ToList();

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteByID(int id)
        {
            var data = db.COMPANY_INFOR.Find(id);
            db.Entry(data).State = EntityState.Deleted;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
    }
}