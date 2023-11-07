using DevApps.Common.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace DevApps.Areas.Admins.Controllers
{
    public class AdminsController : Controller
    {
        // GET: Admins/Admins
        [CustomAuthorize]
        public ActionResult Index()
        {

            var authCookie = HttpContext.Request.Cookies[FormsAuthentication.FormsCookieName];

            var cookieValue = authCookie != null ? authCookie.Value : "";

            var ticket = FormsAuthentication.Decrypt(cookieValue);
            return View();
        }
    }
}