   M S B A M L   `   `   `  ����	  Hotel0    *Hotel.MVVM.Views.Modals.AddReservationView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      
������ .��5	      ��   �� CornerRadius$  15��6   
�������$	��550��62   $	��600��6>   ._�5
   
   � $��10 0 0 0q�6   .+�5      �� .+�5      �� $��Center=�6   $��Add Reservation��5      $��Medium"�5      $��30(�5      $��	0 20 0 20q�5      �� 5       �� Orientation$ 
Horizontal=�6   $��
30 0 30 10q�66   .+�5      �� $��Center=�6    $��0 0 10 0q�6;   Check In Date6^   (  "System.Windows.Controls.DatePicker  5         SelectedDate 6!   �� *CheckInDate+�� 5      $��Center=�6    $��	30 0 10 0q�6;   Check Out Date6`     5       6!   �� *CheckOutDate+5      �� 5      $
��Left=�6   $��Room details��5      $��Medium"�5      $��20(�5      $��
10 20 0 20q�5      �� 5      $ 
Horizontal=�6   $��30 10 30 10q�66   .+�5       �� Available rooms63   �� 5!      $��Bottom=�5"      $��5 0 0 0q�6:    �� DisplayMemberPath$ RoomCode��5#       �� SelectedValuePath$ RoomId��5$      ��5!      �� *AvailableRooms+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedValue 5%      ��  �� Path$ SelectedRoomId� �� Mode$ TwoWay=�5&      �� 5(      $ 
Horizontal=�6   .+�5)      �� $
��Left=�6    $��Guest details��5*       $��Medium"�5+       $��20(�5,       $��
10 20 0 20q�5-       �� 5.      $	��...��6D   
���   �$��	10  0 0 0q�6e   $��20��5/      $��30��6)   ��5.      �� *ChooseGuestCommand+5/   )   50      � 52      $��	30 0 40 0q�6   	 � ColumnDefinitions	 53      �� 54      $	��110 �6+   �� 55      $	��100 �6+   �� 56      $	��100 �6+   �� 57      $��* �6+   
 � RowDefinitions
 5:      �� 5;      $
��Auto �6(   �� 5<      $
��Auto �6(   �� 5=      $
��Auto �6(   �� 5>      $
��Auto �6(   �� 5?      $
��Auto �6(   .+�5B      �� $��0��6    $��0��5C       $��
First name��5D       �� 5E      $��0��6   $��1��5F      ${�False��5G      ��5H      �� *	FirstName+$ PropertyChanged=��� 5K      $��0��6    $��2��5L       $��	Last name��5M       $��20 0 0 0q�5N       �� 5O      $��0��6   $��3��5P      ${�False��5Q      ��5R      �� *
LastName+$ PropertyChanged=��� 5T      $��0 10 0 0q�6    $��2��62   $��0��5U       $��Phone number��5V       �� 5W      $��2��6   $��1��5X      ${�False��5Y      $��0 10 0 0q�5Z      ��5[      �� *PhoneNumber+$ PropertyChanged=��� 5]      $��	20 10 0 0q�6    $��2��63   $��2��5^       $��Email��5_       �� 5`      $��2��6   $��3��5a      ${�False��5b      $��0 10 0 0q�5c      ��5d      �� *Email+$ PropertyChanged=��� 5f      $��0 10 0 0q�6    $��3��62   $��0��5g       $
��City��5h       �� 5i      $��3��6   $��1��5j      ${�False��5k      $��0 10 0 0q�5l      ��5m      �� *City+$ PropertyChanged=��� 5o      $��	20 10 0 0q�6    $��3��63   $��2��5p       $��Street��5q       �� 5r      $��3��6   $��3��5s      ${�False��5t      $��0 10 0 0q�5u      ��5v      �� *Street+$ PropertyChanged=��� 5x      $��0 10 0 0q�6    $��4��62   $��0��5y       $��Postal code��5z       �� 5{      $��4��6   $��1��5|      ${�False��5}      $��0 10 0 0q�5~      ��5      �� *
PostalCode+$ PropertyChanged=�5�      �� 5�      $ 
Horizontal=�6   $
��Left=�66   $��Bottom=�6Q   $��	0 50 0 10q�5�      .+�5�      �� $��15(�6    $
��Bold"�6.   $��Center=�6@   $
��Left=�6[   $��	30 0 10 0q�5�       Total Cost:5�      �� 5�      $��15(�6   $��Heavy"�6,   $��Right=�6?   $��50��6[   $��Center=�5�   ^   $��5 0 10 0q�5�      ${�False��5�      ��5�      �� *	TotalCost+$ PropertyChanged=�5�      5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $	��Add��6   $��30 10 10 10q�5�      $
��Left=�5�      
����  �
���������5�      �� *AddReservationCommand+�� 5�      $��Cancel��6   $��10 10 10 10q�5�      $
��Left=�5�      
����  �
���������5�      �� *CloseModalCommand+5�      5�      5�      5�      5�      