using QuanLyKho.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows;
using System.Windows.Input;
using QuanLyKho.Models;

namespace QuanLyKho.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        public bool IsLogin { set; get; }
        private string _userName;
        private string _password;
        public string UserName { get =>_userName; set { _userName = value; OnPropertyChanged(); } }

        public string Password { get => _password; set { _password = value; OnPropertyChanged(); } }

        public ICommand LoginCommand { get; set; }
        public ICommand CancelCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }




        public LoginViewModel()
        {
            IsLogin = false;

            LoginCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>{Login(p);});

            void Login(Window p)
            {
                if (p == null)
                    return;
                string passEncode = CreateMD5(Base64Encode(Password));
                var accCount = DataProvider.Ins.DB.Users.Where(t => t.UserName == UserName && t.Password == passEncode).Count();
                if (accCount > 0)
                {
                    IsLogin = true;
                    p.Close();
                }
                else
                {
                    MessageBox.Show("Ten dang nhap hoac mat khau sai");
                    IsLogin = false;
                }
                          
            }

            CancelCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { Cancel(p); });
            void Cancel(Window p)
            {
                if (p == null)
                    return;
                p.Close();
            }

            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password = p.Password; });


        }
        public static string Base64Encode(string input)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(input);
            return System.Convert.ToBase64String(plainTextBytes);
        }
        public static string CreateMD5(string input)
        {
            // Use input string to calculate MD5 hash
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                return Convert.ToHexString(hashBytes); // .NET 5 +

                // Convert the byte array to hexadecimal string prior to .NET 5
                // StringBuilder sb = new System.Text.StringBuilder();
                // for (int i = 0; i < hashBytes.Length; i++)
                // {
                //     sb.Append(hashBytes[i].ToString("X2"));
                // }
                // return sb.ToString();
            }
        }
    }
}
