//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DevApps.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class BANNER
    {
        public int ID { get; set; }
        public string TITLE { get; set; }
        public string TITLE_EN { get; set; }
        public string SLUG { get; set; }
        public string SLUG_EN { get; set; }
        public string DESCRIPTION { get; set; }
        public string DESCRIPTION_EN { get; set; }
        public Nullable<int> POSITION { get; set; }
        public Nullable<bool> HEADER { get; set; }
        public Nullable<int> ORDER { get; set; }
        public Nullable<System.DateTime> CREATED_DATE { get; set; }
        public Nullable<System.DateTime> UPDATED_DATE { get; set; }
        public string ADMIN_CREATED { get; set; }
        public string ADMIN_UPDATED { get; set; }
        public Nullable<byte> STATUS { get; set; }
        public Nullable<bool> ISDELETE { get; set; }
        public string IMAGE { get; set; }
    }
}
