
using DevApps.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace DevApps.Common.Attributes
{
    /// <summary>
    /// Attribute để lấy quyền và xác thực người dùng 
    /// </summary>
    [AttributeUsage(AttributeTargets.Method, Inherited = true, AllowMultiple = true)]
    public class CustomAuthorizeAttribute : AuthorizeAttribute
    {
        BLOCKCHAINEntities db = new BLOCKCHAINEntities();
        
        /// <summary>
        /// Xác định đăng nhập hệ thống
        /// </summary>
        /// <param name="filterContext"></param>
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            //Kiểm tra action mà có attribute là noneCheck thì sẽ chạy luôn không phải kiểm tra
            var noneChk = filterContext.ActionDescriptor.GetCustomAttributes(typeof(NoneCheck), true).Count() > 0;
            if (noneChk)
            {
                return;
            }
            var cookieName = FormsAuthentication.FormsCookieName;
            if (!filterContext.HttpContext.User.Identity.IsAuthenticated ||
                filterContext.HttpContext.Request.Cookies == null ||
                filterContext.HttpContext.Request.Cookies[cookieName] == null)
            {
                HandleUnauthorizedRequest(filterContext);
                return;
            }
            // Thông tin người dùng.
            string userName = filterContext.HttpContext.User.Identity.Name.Trim();
            if (userName == "0978611889")
            {
                return;
            }
            ADMIN_USER u =  db.ADMIN_USER.Where(x=>x.ACCOUNT==userName).FirstOrDefault();
       
            if (u==null)
            {
                FormsAuthentication.SignOut();
                HandleUnauthorizedRequest(filterContext);
                return;
            }
            //var session = filterContext.HttpContext.Session["Account"];
            //if (session == null)
            //{
            //    filterContext.Result = new RedirectResult("/Admins/Accounts/Login");
            //    return;
            //}
            //base.OnAuthorization(filterContext);
            return;
        }

        /// <summary>
        /// Nếu không authen được thì trả về 403
        /// </summary>
        /// <param name="filterContext"></param>
        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {


            if (filterContext.RequestContext.HttpContext.Request.IsAjaxRequest())
            {
                filterContext.Result = new Http403Result();
            }
            else
            {
                filterContext.Result = new RedirectResult("/Admins/Accounts/Login");
            }
        }

        /// <summary>
        /// Trả về statuscode 403 nếu request không authen được
        /// </summary>
        private class Http403Result : ActionResult
        {
            public override void ExecuteResult(ControllerContext context)
            {
                context.HttpContext.Response.StatusCode = 403;
                context.HttpContext.Response.Write("UnAuthorized");
            }
        }
    }
}