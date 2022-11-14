using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKho.ViewModels

{
    public class MainViewModel : BaseViewModel
    {
        public bool IsLoaded { get; set; }
        // mọi thứ xử lý sẽ nằm ở đây
        public ICommand LoadedWindowCommand { get; set; }

        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();
                IsLoaded = true;
            }
            );

            
        }
    }
}
