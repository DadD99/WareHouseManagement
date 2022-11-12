using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace QuanLyKho.ViewModels

{
    public class MainViewModel : BaseViewModel
    {
        public bool IsLoaded { get; set; }
        // mọi thứ xử lý sẽ nằm ở đây
        public MainViewModel()
        {
            if(!IsLoaded)
            {
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();
                IsLoaded = true;
            }
            
        }
    }
}
