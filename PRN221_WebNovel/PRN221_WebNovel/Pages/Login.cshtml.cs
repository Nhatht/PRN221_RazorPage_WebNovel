using BO;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.VisualBasic;
using Newtonsoft.Json;
using NovelService;
using PRN221_WebNovel.Models;
using System.Security.Claims;

namespace PRN221_WebNovel.Pages
{
    public class LoginModel : PageModel
    {
        private readonly IAccountService _accountService;
        public LoginModel(IAccountService accountService)
        {
            _accountService = accountService;
        }
        public Account User { get; set; }
        public string ErrorMessage { get; set; } = "";
        public IActionResult OnGet()
        {
            if (HttpContext.Session.GetString("loginUser") != null)
            {
                return RedirectToPage("/Reader/Index");
            }
            return Page();
        }
        public async Task<IActionResult> OnPostAsync(string email, string password)
        {
            if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(password))
            {
                var user = _accountService.GetAccount(email, password);
                if (user == null)
                {
                    TempData["ErrorMessage"] = "Invalid ID or Password";
                    return Page();
                }
                else
                {
                    var loginUser = new AccountViewmodel
                    {
                        Id = user.Id,
                        Name = user.Name,
                        Role = user.Role
                    };

                    var loginUserJson = JsonConvert.SerializeObject(loginUser);
                    HttpContext.Session.SetString("loginUser", loginUserJson);
                    var role = user.Role;
                    if (role == "Author")
                    {
                        return RedirectToPage("/Author/Index");
                    }
                    else if (role == "Reader")
                    { 
                        return RedirectToPage("/Reader/Index");
                    }
                    else if (role == "Admin")
                    {
                        return RedirectToPage("/Admin/ManageAccount/Index");
                    }
                    else
                    {
                        ErrorMessage = "Invalid email or password";
                        return Page();
                    }
                }
            }
            else
            {
                TempData["ErrorMessage"] = "Invalid ID or Password";
                return Page();
            }
        }
    }
}
