using DevApps.Common.Attributes;
using DevApps.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DevApps.Areas.Admins.Controllers
{
    public class BannerController : Controller
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
            var data = db.BANNERs.ToList();
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddOrUpdate(BANNER itemInfor)
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
                BANNER item = itemInfor as BANNER;
                if (itemInfor.CREATED_DATE == null)
                    itemInfor.CREATED_DATE = DateTime.Now;
                if (item.UPDATED_DATE == null)
                    item.UPDATED_DATE = DateTime.Now;
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
            }

            var data = db.BANNERs.OrderBy(x => x.ID).ToList();

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteByID(int id)
        {
            var data = db.BANNERs.Find(id);
            db.Entry(data).State = EntityState.Deleted;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
    }
}