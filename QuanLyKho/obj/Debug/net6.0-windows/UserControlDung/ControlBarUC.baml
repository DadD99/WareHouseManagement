   M S B A M L   `   `   `  ????D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:QuanLyKho.UserControlDungQuanLyKho.UserControlDung  5      E'clr-namespace:QuanLyKho.UserControlDungQuanLyKho.UserControlDung  5	      ,    &QuanLyKho.UserControlDung.ControlBarUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:QuanLyKho.UserControlDung     5      6uc'clr-namespace:QuanLyKho.UserControlDung     5	      c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5
   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5        $??ucControlBar??5         MaterialDesignBody#???   5   	   $??Regular"?5   	   $??13(?5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=?5   	      TextRenderingMode$
 Auto=?5   	     MaterialDesignPaper#???  5   	     MaterialDesignFont#???  5   	   .  (System.Windows.Interactivity.Interaction   Triggers 5   
   /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ MouseLeftButtonDown??6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 5      ?? *MouseMoveWindowCommand+   CommandParameter 5      ??  ?? ElementName$ ucControlBar??5      .??5      ? .+?5    
   (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ 
PrimaryMid=?5!      .??5"      ]? .+?5$      ?? $??Right=?6   
?????? 	 ?? Orientation$	 
Horizontal=?5&      
 ? 	Resources
 5'       ?? 
TargetType ?? Property ?? Value??%?   '??       ?? 5(      " ??6    .?5)      ??  ? ??$ 	10 0 10 0q?68   6L   ?? 5*       ? ??
 ?????6K   5+      5,      .+?5.      ?? 
?????? 
?????? $??0q?53       ? ToolTip$ Minimize??55      ??5/      ?? *MinimizeWindowCommand+??50      ?? $ ucControlBar????54      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Minus=?55      ?? 56      
?????? $??0q?5:      
?????? $ Maximize??5=      ??57      ?? *MaximizeWindowCommand+??58      ?? $ ucControlBar????5<        $ Maximize=?5=      ?? 5>      
?????? 
?????? $??0q?5C      $ Close??5E      ??5?      ?? *CloseWindowCommand+??5@      ?? $ ucControlBar????5D        $ WindowClose=?5E      5G      ?? 5I      $
??Left=?5J      $	 
Horizontal=?5K      .+?5L      d?  ' #MaterialDesignHamburgerToggleButton#??[ 5M      ?? 5N      $??16,0,0,0q?5O      $??Center=?5P      ??5Q      ?? *Tag+$ ucControlBar??5R      5T      5U      5V      5W      