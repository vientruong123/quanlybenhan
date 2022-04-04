using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DACN.ViewModel
{
    public class BAViewModel
    {
        public int MaBenhAn { get; set; }

        public int? MaBacSi { get; set; }

        public int? MaBenhNhan { get; set; }

        public DateTime? NgayKham { get; set; }

        public string NoiDung { get; set; }

        public string ChuanDoan { get; set; }

        public string DonThuoc { get; set; }

        public string fileBenhAn { get; set; }

        [DataType(DataType.Upload)]
        public HttpPostedFileBase FileBA { get; set; }

        public int? TrangThai { get; set; }
    }
}