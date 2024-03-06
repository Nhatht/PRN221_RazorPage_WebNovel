using BO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore.Query.Internal;
using NovelService;

namespace PRN221_WebNovel.Pages
{
    public class RegisterModel : PageModel
    {
        private readonly IAccountService _accountService;
        public RegisterModel(IAccountService accountService)
        {
            _accountService = accountService;
        }
        public Account User { get; set; }
        public string ErrorMessage { get; set; } = "";
        public async Task<IActionResult> OnPostAsync(string name, string email, string password, string gender)
        {
            var exist = _accountService.GetAccountByEmail(email);
            if (exist != null)
            {
                TempData["ErrorMessage"] = "Email đã tồn tại";
                return Page();
            }
            if (!email.EndsWith("@gmail.com", StringComparison.OrdinalIgnoreCase))
            {
                TempData["ErrorMessage"] = "Chỉ chấp nhận đăng ký với email có định dạng @gmail.com";
                return Page();
            }
            if (ModelState.IsValid)
            {
                Account account = new Account();
                account.Name = name;
                account.Email = email;
                account.Password = password;
                account.Gender = gender;
                account.Role = "Reader";
                _accountService.AddAccount(account);
                return RedirectToPage("/Login");
            }
            else
            {
                TempData["ErrorMessage"] = "Không thể tạo được tài khoản";
                return Page();
            }
        }
    }
}
