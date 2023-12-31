﻿using System;
using Hotel.Factories;
using Hotel.Services.Interfaces;

namespace Hotel.Commands;

public class OpenModalCommand : BaseCommand
{
    private readonly Func<ViewType> _customParameter;
    private readonly INavigator _navigator;
    private readonly IViewModelFactory _viewModelFactory;

    public OpenModalCommand(INavigator navigator, IViewModelFactory viewModelFactory, Func<ViewType> customParameter)
    {
        _navigator = navigator;
        _viewModelFactory = viewModelFactory;
        _customParameter = customParameter;
    }

    public override void Execute(object? parameter)
    {
        var myParameter = _customParameter();
        if (myParameter is ViewType)
        {
            var viewType = myParameter;
            _navigator.CurrentModalViewModel = _viewModelFactory.CreateViewModel(viewType);
        }
    }
}