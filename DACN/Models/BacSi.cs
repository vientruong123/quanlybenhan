namespace DACN.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BacSi")]
    public partial class BacSi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BacSi()
        {
            BenhAns = new HashSet<BenhAn>();
            LichHens = new HashSet<LichHen>();
            Liches = new HashSet<Lich>();
        }

        [Key]
        public int MaBacSi { get; set; }

        [StringLength(250)]
        public string HinhAnh { get; set; }

        [StringLength(50)]
        public string TaiKhoan { get; set; }

        [StringLength(50)]
        public string MatKhau { get; set; }

        [StringLength(200)]
        public string HoVaTen { get; set; }

        public int? MaChuyenKhoa { get; set; }

        [StringLength(10)]
        public string NgaySinh { get; set; }

        public int? MaGioiTinh { get; set; }

        public int? SDT { get; set; }

        [StringLength(500)]
        public string Email { get; set; }

        public int? TrangThai { get; set; }

        public virtual ChuyenKhoa ChuyenKhoa { get; set; }

        public virtual GioiTinh GioiTinh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BenhAn> BenhAns { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LichHen> LichHens { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lich> Liches { get; set; }
    }
}
