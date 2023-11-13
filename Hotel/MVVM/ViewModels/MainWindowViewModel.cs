﻿using System.Windows.Input;
using Hotel.Commands;
using Hotel.Stores;

namespace Hotel.MVVM.ViewModels;

public class MainWindowViewModel : ViewModelBase
{
    private readonly NavigationViewStore _navigationViewStore;
    private readonly NavigationModalViewStore _navigationModalViewStore;
    
    public ViewModelBase CurrentViewModel => _navigationViewStore.CurrentViewModel;
    public ViewModelBase CurrentModalViewModel => _navigationModalViewStore.CurrentViewModel;
    public bool IsModalOpen => _navigationModalViewStore.IsOpenModal;

    public ICommand NavigateReservationCommand { get; }
    public ICommand NavigateTestCommand { get; }
    
    public ICommand AddViewModalCommand { get; }

    public MainWindowViewModel(NavigationViewStore navigationViewStore, NavigationModalViewStore navigationModalViewStore)
    {
        _navigationViewStore = navigationViewStore;
        _navigationModalViewStore = navigationModalViewStore;

        NavigateReservationCommand = new NavigateCommand<ReservationsListingViewModel>(_navigationViewStore,
            () => new ReservationsListingViewModel(_navigationModalViewStore));
        
        NavigateTestCommand = new NavigateCommand<TestViewModel>(navigationViewStore, 
            () => new TestViewModel(_navigationModalViewStore));
        
        AddViewModalCommand = new NavigateModalCommand(_navigationModalViewStore,
            () => new CrudAddModalViewModel(_navigationModalViewStore));
        
        _navigationModalViewStore.CurrentViewModelChanged += OnCurrentViewModalChanged;
        _navigationViewStore.CurrentViewModelChanged += OnCurrentViewModelChanged;
    }
    
    private void OnCurrentViewModelChanged()
    {
        OnPropertyChanged(nameof(CurrentViewModel));
    }
    
    private void OnCurrentViewModalChanged()
    {
        OnPropertyChanged(nameof(CurrentModalViewModel));
        OnPropertyChanged(nameof(IsModalOpen));
    }
}