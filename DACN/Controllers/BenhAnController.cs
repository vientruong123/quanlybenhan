using DACN.Models;
using DACN.ViewModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace DACN.Controllers
{
    public class BenhAnController : Controller
    {
        private DACNDBContext db = new DACNDBContext();

        //DS Bệnh Án
        public ActionResult DSBenhAn()
        {
            return View(db.BenhAns.ToList());
        }

        //Chi Tiết Bệnh Án
        public ActionResult ChiTietBenhAn(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BenhAn benhAn = db.BenhAns.Find(id);
            if (benhAn == null)
            {
                return HttpNotFound();
            }
            return View(benhAn);
        }

        //Tạo Mới Bệnh Án
        public ActionResult TaoBenhAn(int id)
        {
            ViewBag.MaLich = new SelectList(db.Liches.Where(p => p.TrangThai == 2 && p.MaBacSi==id), "MaLich", "Ngay");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult TaoBenhAn(BAViewModel model, int MaLich)
        {
            try
            {
                if (model.FileBA != null && model.FileBA.ContentLength > 0)
                {
                    string subPath = Server.MapPath("~/Content/HinhAnh/FileBenhAn/");
                    bool exists = System.IO.Directory.Exists(subPath);
                    if (!exists)
                    {
                        System.IO.Directory.CreateDirectory(subPath);
                    }
                    string extension = Path.GetExtension(model.FileBA.FileName);
                    model.fileBenhAn = model.FileBA.FileName;
                    model.FileBA.SaveAs(Server.MapPath("~/Content/HinhAnh/FileBenhAn/") + model.fileBenhAn);
                }
            }
            catch (Exception) { }
            BenhAn benhAn = new BenhAn
            {
                MaBacSi = model.MaBacSi,
                MaBenhNhan = model.MaBenhNhan,
                NgayKham = model.NgayKham,
                NoiDung = model.NoiDung,
                ChuanDoan = model.ChuanDoan,
                DonThuoc = model.DonThuoc,
                fileBenhAn = model.fileBenhAn,
                TrangThai = 1
            };
            db.BenhAns.Add(benhAn);
            Lich lich = db.Liches.Find(MaLich);
            lich.TrangThai = 3;
            benhAn.NgayKham = lich.Ngay;
            benhAn.TrangThai = 1;
            LichHen lh = db.LichHens.FirstOrDefault(p => p.Lich.MaLich == MaLich);
            lh.TrangThai = 3;
            db.SaveChanges();
            return RedirectToAction("DSBenhAn");
        }

        //Chỉnh Sửa Bệnh Án
        public ActionResult ChinhSua(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BenhAn benhAn = db.BenhAns.Find(id);
            if (benhAn == null)
            {
                return HttpNotFound();
            }
            return View(benhAn);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ChinhSua([Bind(Include = "MaBenhAn,MaBacSi,MaBenhNhan,TenBenhNhan,NgayKham,NoiDung,ChuanDoan,DonThuoc,fileBenhAn,TrangThai")] BenhAn benhAn)
        {
            if (ModelState.IsValid)
            {
                db.Entry(benhAn).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("DSBenhAn");
            }
            return View(benhAn);
        }
    }
}