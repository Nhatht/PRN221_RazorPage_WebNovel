using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace BO
{
    public partial class Account
    {
        public Account()
        {
            Novels = new HashSet<Novel>();
        }

        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên")]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "Tên phải từ 3 kí tự và không được quá 100 ký tự")]
        [RegularExpression(@"^[A-Z][a-zA-Z\s]*$", ErrorMessage = "Chữ cái đầu của tên phải viết hoa")]
        [Display(Name = "Tên")]
        public string? Name { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập email")]
        [RegularExpression(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){1,3})+)$", ErrorMessage = "Email không hợp lệ")]
        [Display(Name = "Email")]
        public string? Email { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập mật khẩu")]
        [StringLength(100, MinimumLength = 8, ErrorMessage = "Mật khẩu phải từ 8 kí tự")]
        [RegularExpression(@"^(?=.*[A-Z])(?=.*\W).*$", ErrorMessage = "Mật khẩu phải có ít nhất 1 kí tự đặc biệt và 1 kí tự viết hoa")]
        [Display(Name = "Mật khẩu")]    
        public string? Password { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập giới tính")]
        [RegularExpression("(Male|Female|Other)", ErrorMessage = "Giới tính chỉ được nhập Male, Female hoặc Other")]
        [Display(Name = "Giới tính")]
        public string? Gender { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập role")]
        [RegularExpression("(Reader|Author)", ErrorMessage = "Role chỉ được nhập Reader hoặc Author")]
        [Display(Name = "Role")]
        public string? Role { get; set; }

        public virtual ICollection<Novel> Novels { get; set; }
    }
}
