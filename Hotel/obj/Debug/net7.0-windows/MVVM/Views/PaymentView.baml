   M S B A M L   `   `   `  ����@  <Hotel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Hotel.MVVM.ViewsHotel.MVVM.Views  5      "    Hotel.MVVM.Views.PaymentView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0viewsclr-namespace:Hotel.MVVM.Views     5         
Page_Style#��[  5	      .��5      �� $��10q�6     �� CornerRadius$  10��6   ._�5   
   �  � ColumnDefinitions 5      �� 5      $��2* �6#   �� 5      $��3* �6#   .+�5      �� 
�������$  15��6(   ._�5      � $��25q�6    5      �� 5      $��* �6+   �� 5      $��* �6+    � RowDefinitions 5      �� 5      $��* �6(   �� 5      $��* �6(   �� 5      $��* �6(   �� 5      $��* �6(   �� 5      $��* �6(   �� 5      $��* �6(   �� 5       $��* �6(   �� 5!      $��* �6(   �� 5"      $��* �6(   .+�5%      �� $��0��6    $
��Left=�6-   $��Center=�6H   $��0 0 5 0q�6c   �� 5&      $�Check in date:��6   5'      (  "System.Windows.Controls.DatePicker  5(      $��0��6!   $��1��6.   
�������${�False��6Q   $��5 0 0 0q�5)   F      SelectedDate 6!   �� *CheckInDate+6F   �� 5+      $��1��6    $
��Left=�6-   $��Center=�6H   $��0 0 5 0q�6c   �� 5,      $�Check out date:��6   5-        5.      $��1��6!   $��1��6.   
�������${�False��6Q   $��5 0 0 0q�5/   G    6!   �� *CheckOutDate+6G   �� 51      $��2��6    $
��Left=�6-   $��Center=�6H   $��0 0 5 0q�6c   �� 52      $�Payment date:��6   53        54      $��2��6!   $��1��6.   
�������$��5 0 0 0q�57   !   {�55   !   �� *PaymentDateEnabled+ �� UpdateSourceTrigger$ PropertyChanged=� 56   !   �� *PaymentDate+$ PropertyChanged=�57   !   �� 59      $��3��6    $
��Left=�6-   $��Center=�6H   $��0 0 5 0q�6c   �� 5:      $�Payment type:��6   5;      �� 5<      $��3��6   $��1��6,    �� DisplayMemberPath$ PaymentMethod��5>       �� SelectedValuePath$ Id��5?      $��5 0 0 0q�5@   `   ��5=      �� *PaymentTypes+$ PropertyChanged=� �� SelectedValue 5@      ��  �� Path$ SelectedPaymentTypeId�	 �� Mode$	 TwoWay=�6`   �� 5B      $��4��6    $
��Left=�6-   $��Center=�6H   $��0 0 5 0q�6c   �� 5C      $�Total cost:��6   5D      �� 5E      $��4��6    $��1��6-   
�������$��5 0 0 0q�6P   ${�False��6a   $
��Left=�5G       $��Center=�6;   ��5F       �� *	TotalCost+5G   ;   �� 5I      $��5��6    $
��Left=�6-   $��Center=�6H   $��0 0 5 0q�6c   �� 5J      $�Guest full name:��6   5K      �� 5L      $��5��6    $��1��6-   
�������$��5 0 0 0q�6P   ${�False��6a   $
��Left=�5N       $��Center=�6;   ��5M       �� *GuestFullname+5N   ;   �� 5P      $��6��6    $
��Left=�6-   $��Center=�6H   $��0 0 5 0q�6c   �� 5Q      $�Room number:��6   5R      �� 5S      $��6��6    $��1��6-   
�������$��5 0 0 0q�6P   ${�False��6a   $
��Left=�5U       $��Center=�6;   ��5T       �� *FloorAndRoomNumber+5U   ;   �� 5W      $��7��6   $��2��6*   $��Choose reservation��5X      ��5W   >   �� *TestCommand+5X      �� 5Y      $��8��6   $��2��6*   $��0 0 0 0q�6>   $	��Pay��5Z   J   ��6   �� *PayForReservationCommand+6J   5[      5\      �� 5^      
�������$  15��6(   $��1��6:   $��	10 0 0 0 q�6J   ._�5_      � $��	0 10 0 10q�6   .+�5`      &   System.Windows.Controls.DataGrid  
�������
   AutoGenerateColumns$
 False��62   ��6N   �� *Items+   Columns 5a      0  *System.Windows.Controls.DataGridTextColumn  5b      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 61      Header$ Amount��6;      
IsReadOnly$
 True��6K   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6]   �� *Amount+  5c      $ * 61   $ Payment date��6;   $
 True��6Q    5d   1   �� *PaymentDate+  5e      $ * 61   $ Payment method��6;    6S   �� *PaymentMethod+  5f      $ * 61   $ Reservation number��6;    5g   1   �� *ReservationNumber+5i      5j      5k      5l      5m      5n      