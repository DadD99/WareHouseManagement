   M S B A M L   `   `   `  ????D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyKho.ViewsQuanLyKho.Views  5   	   E'clr-namespace:QuanLyKho.UserControlDungQuanLyKho.UserControlDung  5   	   #    QuanLyKho.Views.ObjectsWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:QuanLyKho.Views     5   	   6uc'clr-namespace:QuanLyKho.UserControlDung     5   	   c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5        $??window??5	   	     ? Title$  Objects Window??5   	   $	??450??6    $	??800??6-      MaterialDesignBody#???   5   	   $??Regular"?5   	   $??13(?5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5   	      TextRenderingMode$
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
   .?5,      ??  ? ??$ 4q?67   6C   ?? 5-       ? ??$ Center=?6B   6S   ?? 5.       ? ??$	 100??66   6D   5/      50      .+?51      ?? )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Tên Hàng??6   ??52      ?? *DisplayName+ ?? UpdateSourceTrigger$ PropertyChanged=??? 53      $ Đơn vị đo??54       ?? 
IsEditable$
 True??55      $??	0 0 0 -11q?56      $	??100??57      ??58      ?? *Unit+ ?? SelectedItem 59      ?? *SelectedUnit+ ?? Mode$ TwoWay=?$ PropertyChanged=??? 5:      $ Nhà cung cấp??5;      $
 True??5<      $??	4 0 0 -11q?5=      $	??100??5>      ??5?      ?? *
Supplier+ 5@      ?? *SelectedSupplier+$ TwoWay=?$ PropertyChanged=??? 5A      $ QR Code??6   ??5B      ?? *QRCode+$ PropertyChanged=??? 5C      $ Bar Code??6   ??5D      ?? *	BarCode+$ PropertyChanged=?5F      5G        5I      $??1??6"   $??4q?6/    5J       ! MaterialDesignFlatMidBgButton??%?   '??       7  ?? 5K      "	 ??6   8
   .?5M      ??  ? ??$	 100??62   6@   ?? 5N       ? ??$ 4q?63   6?   5O      5P      .??5Q      ? .+?5R      ?? $??Thêm??6   ??5S      ?? *
AddCommand+6>   ?? 5T      $??Sửa??6   ??5U      ?? *EditCommand+6?   ?? 5V      $
??Xóa??6   ??5W      ?? *DeleteCommand+6A   5X      5Y        5[      $??2??6"   $??4q?6/   $??Stretch=?6:   .??5\      ?? $
??Auto=?6   $
??Auto=?5]      .??5^      ?? ??6   ?? *List+ 6<   ?? *SelectedItem+$ OneWayToSource=? ?? View 5_      ?? 5`      .P?5a   "   ?? $??Id??61    ?? DisplayMemberBinding 6=   ?? *ID+6c   ?? 5b   "   $??
Tên Hàng??61    6C   ?? *Displayname+6r   ?? 5c   "   $??Đơn vị đo??61    6D   ?? *Unit.DisplayName+6x   ?? 5d   "   $	??NCC??61    6>   ?? *Supplier.DisplayName+6v   ?? 5e   "   $??QR Code??61    6B   ?? *QRCode+6l   ?? 5f   "   $??Bar Code??61    6C   ?? *	BarCode+6n   5g      5j      5k      5m      5n      5p      5q      