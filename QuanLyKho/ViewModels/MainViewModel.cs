﻿using QuanLyKho.Models;
using QuanLyKho.Views;
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
        public ICommand UnitCommand { get; set; }
        public ICommand SuppliersCommand { get; set; }
        public ICommand CustomersCommand { get; set; }
        public ICommand UsersCommand { get; set; }
        public ICommand ObjectsCommand { get; set; }
        public ICommand InputCommand { get; set; }
        public ICommand OutputCommand { get; set; }



        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                IsLoaded = true;
                if (p == null)
                    return;
                p.Hide();
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();
                if (loginWindow.DataContext == null)
                    return;
                var loginVM = loginWindow.DataContext as LoginViewModel;
                if(loginVM.IsLogin)
                {
                    p.Show();
                }
                else
                {
                    p.Close();
                }
            });

            UnitCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                UnitWindow wd = new UnitWindow();
                wd.ShowDialog();              
            });
            SuppliersCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                SuppliersWindow wd = new SuppliersWindow();
                wd.ShowDialog();
            });
            CustomersCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CustomersWindow wd = new CustomersWindow();
                wd.ShowDialog();
            });
            ObjectsCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                ObjectsWindow wd = new ObjectsWindow();
                wd.ShowDialog();
            });
            UsersCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                UsersWindow wd = new UsersWindow();
                wd.ShowDialog();
            });
            InputCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                InputWindow wd = new InputWindow();
                wd.ShowDialog();
            });
            OutputCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                OutputWindow wd = new OutputWindow();
                wd.ShowDialog();
            });
            
        }
    }
}
