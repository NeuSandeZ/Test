﻿using System;
using Hotel.MVVM.ViewModels;
using Hotel.Services.Interfaces;

namespace Hotel.Services;

public class Navigator : INavigator
{
    private ViewModelBase _currentViewModel;
    public ViewModelBase CurrentViewModel
    {
        get
        {
            return _currentViewModel;
        }
        set
        {
            _currentViewModel?.Dispose();
            
            _currentViewModel = value;
            StateChanged?.Invoke();
        }
    }
    private ViewModelBase _currentModalViewModel;

    public ViewModelBase CurrentModalViewModel
    {
        get => _currentModalViewModel;
        set
        {
            _currentModalViewModel?.Dispose();

            _currentModalViewModel = value;
            StateModalChanged?.Invoke();
        }
    }

    private bool _isModalOpen;

    public bool IsModalOpen => CurrentModalViewModel != null;


    public void Close()
    {
        CurrentModalViewModel = null;
    }

    public event Action StateModalChanged;
    public event Action StateChanged;
}