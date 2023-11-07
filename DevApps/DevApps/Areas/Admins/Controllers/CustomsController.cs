using DevApps.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DevApps.Areas.Admins.Controllers
{
    public class CustomsController : Controller
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
            var data = db.CUSTOMERs.ToList();
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddOrUpdate(CUSTOMER itemInfor)
        {
            if (itemInfor.ID == 0)
            {
                if (itemInfor.CREATE_DATE == null)
                    itemInfor.CREATE_DATE = DateTime.Now;
                itemInfor.UPDATE_DATE = DateTime.Now;
                db.Entry(itemInfor).State = EntityState.Added;
                db.SaveChanges();
            }
            else
            {
                CUSTOMER item = itemInfor as CUSTOMER;
                if (itemInfor.CREATE_DATE == null)
                    itemInfor.CREATE_DATE = DateTime.Now;
                if (item.ADMIN_CREATE == null)
                    item.ADMIN_UPDATE = "USER";
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
            }

            var data = db.CUSTOMERs.OrderBy(x => x.ID).ToList();

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteByID(int id)
        {
            var data = db.CUSTOMERs.Find(id);
            db.Entry(data).State = EntityState.Deleted;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
    }
}