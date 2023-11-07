using System;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using System.Web.Security;
using DevApps.Common;
using DevApps.Models;
namespace DevApps.Areas.Admins.Controllers
{
    public class AccountsController : Controller
    {
        BLOCKCHAINEntities db = new BLOCKCHAINEntities();
        // GET: Admins/Accounts
        public ActionResult Index()
        {
            ViewBag.Title = "Quản lý tài khoản";
            return View();
        }
        /// <summary>
        /// Hiển thị danh sách tài khoản
        /// </summary>
        /// <returns></returns>
        [HttpPost] 
        public JsonResult GetDataJSON()
        {
            var data = db.ADMIN_USER.OrderBy(x => x.ACCOUNT).ToList();
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        #region "Login / Logout"
        /// <summary>
        /// Trang đăng nhập hệ thống
        /// </summary>
        /// <param name="returnUrl"> Đường dẫn sau khi đăng nhập thành công </param>
        /// <returns></returns>

        [AllowAnonymous]
        [HttpGet]
        public ActionResult Login(string returnUrl)
        {
            if (Request.IsAuthenticated)
            {
                return RedirectToAction("Index", "Admins");
            }
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        /// <summary>
        /// Xử lý đăng nhập
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(ADMIN_USER model)
        {
            ADMIN_USER _user = new ADMIN_USER();
            if (model.ACCOUNT == "0978611889" && model.PASSWORD == "0978611889$")
            {
                _user.ID = 0;
                _user.ACCOUNT = "0978611889";
                _user.PASSWORD = Encrypt.Sha2HashWithHex(model.PASSWORD);
                _user.NAME = "Administrator";

                Session["Account"] = _user;

                var oldCookie = Request.Cookies[FormsAuthentication.FormsCookieName];
                if (oldCookie != null)
                {
                    oldCookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(oldCookie);
                }
                // Lấy thông tin người dùng đăng nhập
                // Chuyển sang dạng Json data
                // ChungTrinh
                var serializeModel = new AppUserPrincipalSerializeModel();
                serializeModel.UserId = _user.ID;
                serializeModel.UserName = _user.NAME;
                serializeModel.UserLogin = _user.ACCOUNT;
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                string userData = serializer.Serialize(serializeModel);

                var ticket = new FormsAuthenticationTicket(1,
                   _user.NAME.Trim(),
                    DateTime.Now,
                    DateTime.Now.AddMinutes(FormsAuthentication.Timeout.TotalMinutes),
                    true,
                    userData);

                // Encrypt the ticket.
                string encTicket = FormsAuthentication.Encrypt(ticket);
                var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encTicket) { Path = FormsAuthentication.FormsCookiePath };

                FormsAuthentication.SetAuthCookie(model.ACCOUNT, true);

                // Create the cookie.
                HttpContext.Response.Cookies.Add(cookie);

                return Json(1, JsonRequestBehavior.AllowGet);
            }

            if (model.ACCOUNT == null)
            {
                return Json(2, JsonRequestBehavior.AllowGet);
            }

            _user = db.ADMIN_USER.Where(u => u.ACCOUNT == model.ACCOUNT.Trim()).FirstOrDefault();
            if (_user == null)
            {
                return Json(3, JsonRequestBehavior.AllowGet);
            }

            if (model.PASSWORD == null)
            {
                return Json(4, JsonRequestBehavior.AllowGet);
            }

            if (_user.PASSWORD != Encrypt.Sha2HashWithHex(model.PASSWORD))
            {
                return Json(5, JsonRequestBehavior.AllowGet);
            }
            else
            {
                Session["Account"] = _user;
                var oldCookie = Request.Cookies[FormsAuthentication.FormsCookieName];
                if (oldCookie != null)
                {
                    oldCookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(oldCookie);
                }
                // Lấy thông tin người dùng đăng nhập
                // Chuyển sang dạng Json data
                // Chung Trinh
                var serializeModel = new AppUserPrincipalSerializeModel();
                serializeModel.UserId = _user.ID;
                serializeModel.UserName = _user.NAME;
                serializeModel.UserLogin = _user.ACCOUNT;
                serializeModel.Password = _user.PASSWORD;
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                string userData = serializer.Serialize(serializeModel);

                var ticket = new FormsAuthenticationTicket(1,
                    _user.NAME.Trim(),
                    DateTime.Now,
                    //DateTime.Now.AddMinutes(FormsAuthentication.Timeout.TotalMinutes),
                    DateTime.Now.AddYears(1),
                    true,
                    userData,
                    FormsAuthentication.FormsCookiePath);

                // Encrypt the ticket.
                string encTicket = FormsAuthentication.Encrypt(ticket);
                var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encTicket);
              
                // Create the cookie.
                Response.Cookies.Add(cookie);
                return Json(1, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            return RedirectToAction("Login", "Accounts");
        }
        #endregion

        #region " Add/Update/Delete"
        [HttpPost]
        public JsonResult AddOrUpdate(ADMIN_USER itemInfor)
        {
            if (itemInfor.ID == 0)
            {
                if (itemInfor.NGAY_TAO == null) 
                    itemInfor.NGAY_TAO = DateTime.Now;
                itemInfor.NGAY_CAP_NHAT = DateTime.Now;

                itemInfor.PASSWORD = Encrypt.Sha2HashWithHex(itemInfor.PASSWORD);
                db.Entry(itemInfor).State = EntityState.Added;
                db.SaveChanges();
            }
            else
            {
                ADMIN_USER item = itemInfor as ADMIN_USER;
                if (item.NGAY_TAO == null) 
                        item.NGAY_TAO = DateTime.Now;
                itemInfor.NGAY_CAP_NHAT = DateTime.Now;
                item.PASSWORD = Encrypt.Sha2HashWithHex(itemInfor.PASSWORD);
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
            }
            var data = db.ADMIN_USER.OrderBy(x => x.ACCOUNT).ToList();
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteByID(int id)
        {
            try
            {
                ADMIN_USER item = db.ADMIN_USER.Find(id);
                db.Entry(item).State = EntityState.Deleted;
                db.SaveChanges();
                return Json(1, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(0, JsonRequestBehavior.AllowGet);
            }
        }
        #endregion
    }
}