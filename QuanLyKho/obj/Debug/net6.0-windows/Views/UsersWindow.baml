   M S B A M L   `   `   `  ????D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyKho.ViewsQuanLyKho.Views  5   	   E'clr-namespace:QuanLyKho.UserControlDungQuanLyKho.UserControlDung  5   	   !    QuanLyKho.Views.UsersWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   
   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:QuanLyKho.Views     5   	   6uc'clr-namespace:QuanLyKho.UserControlDung     5   	   c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5        $??window??5	   	     ? Title$  Users Window??5   	   $	??450??6   $	??800??6+      MaterialDesignBody#???   5   	   $??Regular"?5   	   $??13(?5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5   	      TextRenderingMode$
 Auto=?5   	     MaterialDesignPaper#???  5   	     MaterialDesignFont#???  5   	    ? 
ResizeMode$ NoResize=?5   	    ? WindowStyle$
 None=?5   	   .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??auto ?6   6,   ?? 5      6   .+?5   
   ? $??0??6   $
??auto??6   .+?5      ,   &QuanLyKho.UserControlDung.ControlBarUC  
 ? Tag 6   ?? *Title+ ?? ElementName$ window??6J   5      ? 5   
   $??1??6    5       ?? 5!      $
??Auto ?6    60   ?? 5"      $
??Auto ?6    60   ?? 5#      6"   .+?5'      #  MaterialDesignThemes.Wpf.Card  $??0??6"   $??4q?6/   .??5(      ?  ? 	Resources 5)      	 ?? 
TargetType % !MaterialDesignFloatingHintTextBox
 ?? BasedOn ?? Property ?? Value??%?   '??       7  ?? 5*      "	 ??6    8
   .?5,      ??  ? ??$ 4q?67   6C   ?? 5-       ? ??$ Center=?6B   6S   ?? 5.       ? ??$	 100??66   6D   5/      50      .+?51      ?? )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên Đăng Nhập??6   ??52      ?? *
UserName+ ?? UpdateSourceTrigger$ PropertyChanged=??? 53      $ Chức Vụ??54       ?? 
IsEditable$
 True??55      $??	0 0 0 -11q?56      $	??100??57      ??58      ?? *Role+ ?? SelectedItem 59      ?? *SelectedRole+ ?? Mode$ TwoWay=?$ PropertyChanged=??? 5:      $ Tên Hiển Thị??6   ??5;      ?? *DisplayName+$ PropertyChanged=?5>      5?        5A      $??1??6"   $??4q?6/    5B       ! MaterialDesignFlatMidBgButton??%?   '??       7  ?? 5C      "	 ??6   8
   .?5E      ??  ? ??$	 100??62   6@   ?? 5F       ? ??$ 4q?63   6?   5G      5H      .??5I      ? .+?5J      ?? $??Thêm??6   ??5K      ?? *
AddCommand+6>   ?? 5L      $??Sửa??6   ??5M      ?? *EditCommand+6?   ?? 5N      $
??Xóa??6   ??5O      ?? *DeleteCommand+6A   ?? 5P      $??	Đổi MK??6   ??5Q      ?? *ChangePasswordCommand+6I   5R      5S        5U      $??2??6"   $??4q?6/   $??Stretch=?6:   .??5V      ?? $
??Auto=?6   $
??Auto=?5W      .??5X      ?? ??6   ?? *List+ 6<   ?? *SelectedItem+$ OneWayToSource=? ?? View 5Y      ?? 5Z      .P?5[   "   ?? $??ID??61    ?? DisplayMemberBinding 6=   ?? *ID+6c   ?? 5\   "   $??Tên Đăng Nhập??61    6H   ?? *
UserName+6t   ?? 5]   "   $??Chức Vụ??61    6B   ?? *Role+6j   ?? 5^   "   $??Tên Hiển Thị??61    6G   ?? *DisplayName+6v   5`      5c      5d      5f      5g      5i      5j      