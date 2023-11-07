using DevApps.Models;
using DevApps.ModelsView;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DevApps.Controllers
{
    public class TeamsController : Controller
    {
        BLOCKCHAINEntities db = new BLOCKCHAINEntities();
        // GET: Teams
        public ActionResult Index()
        {
            if (Session["language"] == null)
            {
                Session["language"] = 1;
            }
            List<ModelsNews> lst = new List<ModelsNews>();
            var listcate = db.CATEGORies.Where(x => x.POSITION_ID == 5).OrderBy(x => x.ORDER).ToList();
            foreach (var item in listcate)
            {
                ModelsNews md = new ModelsNews();
                md.cate = item;
                md.news = db.NEWS.Where(x => x.CATEGORY_ID == item.ID).ToList();
                lst.Add(md);
            }
            ViewBag.leader = db.LEADER_TEAM.ToList();
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
    }
}