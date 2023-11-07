using DevApps.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DevApps.Areas.Admins.Controllers
{
    public class NewsController : Controller
    {
        BLOCKCHAINEntities db = new BLOCKCHAINEntities();
        // GET: Admins/NEWS
        public ActionResult Index()
        {
            ViewBag.cate = db.CATEGORies.ToList();
            return View();
        }

        [HttpPost]
        public JsonResult GetDataJson()
        {
            var data = db.NEWS.ToList();
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddOrUpdate(NEWS itemInfor)
        {
            if (itemInfor.ID == 0)
            {
                if (itemInfor.CREATED_DATE == null)
                    itemInfor.CREATED_DATE = DateTime.Now;
                itemInfor.UPDATED_DATE = DateTime.Now;
                db.Entry(itemInfor).State = EntityState.Added;
                db.SaveChanges();
            }
            else
            {
                NEWS item = itemInfor as NEWS;
                if (itemInfor.CREATED_DATE == null)
                    itemInfor.CREATED_DATE = DateTime.Now;
                if (item.UPDATED_DATE == null)
                    item.UPDATED_DATE = DateTime.Now;
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
            }

            var data = db.NEWS.OrderBy(x => x.ID).ToList();

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteByID(int id)
        {
            var data = db.NEWS.Find(id);
            db.Entry(data).State = EntityState.Deleted;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
    }
}