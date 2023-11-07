﻿using DevApps.Models;
using DevApps.ModelsView;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DevApps.Controllers
{
    public class WorksController : Controller
    {
        BLOCKCHAINEntities db = new BLOCKCHAINEntities();
        // GET: Contacts
        public ActionResult Index()
        {
            if (Session["language"] == null)
            {
                Session["language"] = 1;
            }
            List<ModelsNews> lst = new List<ModelsNews>();
            var listcate = db.CATEGORies.Where(x => x.POSITION_ID == 4).OrderBy(x => x.ORDER).ToList();
            foreach (var item in listcate)
            {
                ModelsNews md = new ModelsNews();
                md.cate = item;
                md.news = db.NEWS.Where(x => x.CATEGORY_ID == item.ID).ToList();
                lst.Add(md);
            }
            ViewBag.BannerUs = db.BANNERs.ToList();
            return View(lst);
        }
        public JsonResult changeLanguage(int id)
        {
            if (id == 1)
            {
                Session["language"] = 2;
            }
            else
            {
                Session["language"] = 1;
            }
            return Json(true);
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
                    item.ADMIN_UPDATE = "Admin";
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
            }

            var data = db.CUSTOMERs.OrderBy(x => x.ID).ToList();

            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}