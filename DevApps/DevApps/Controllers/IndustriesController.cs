using DevApps.Models;
using DevApps.ModelsView;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DevApps.Controllers
{
    public class IndustriesController : Controller
    {
        BLOCKCHAINEntities db = new BLOCKCHAINEntities();
        // GET: Indútries
        public ActionResult Index()
        {
            if (Session["language"] == null)
            {
                Session["language"] = 1;
            }
            ModelsNews industries = new ModelsNews();
            industries.cate = db.CATEGORies.Where(x => x.POSITION_ID == 3).FirstOrDefault();
            industries.news = db.NEWS.Where(x => x.CATEGORY_ID == industries.cate.ID).ToList();

            ViewBag.bannerUs = db.BANNERs.ToList();
            return View(industries);
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
    }
}