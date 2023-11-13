﻿using System;
using System.Configuration;
using System.IO;
using System.Windows;
using Hotel.Factories;
using Hotel.Infrastructure;
using Hotel.MVVM.ViewModels;
using Hotel.Stores;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Hotel.Infrastructure.Extensions;
using Hotel.Services;


namespace Hotel;

/// <summary>
///     Interaction logic for App.xaml
/// </summary>
public partial class App : System.Windows.Application
{
    private readonly IHost _host;

    public App()
    {
        var connectionString = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json")
            .Build()
            .GetConnectionString("HotelDbContext");
        
        _host = Host.CreateDefaultBuilder().ConfigureServices(services =>
            {
                services.AddInfrastructure(connectionString);
                
                
                services.AddSingleton<IViewModelFactory, ViewModelFactory>();
                services.AddSingleton<INavigator, Navigator>();
                
                services.AddTransient<ReservationsListingViewModel>();
                services.AddTransient<TestViewModel>();
                
                services.AddSingleton<CreateViewModel<ReservationsListingViewModel>>(services => services.GetRequiredService<ReservationsListingViewModel>);
                services.AddSingleton<CreateViewModel<TestViewModel>>(services => services.GetRequiredService<TestViewModel>);
                
                
                services.AddSingleton<NavigationModalViewStore>(); // 
                
                services.AddSingleton<MainWindowViewModel>();
                services.AddSingleton(s => new MainWindow
                {
                    DataContext = s.GetRequiredService<MainWindowViewModel>()
                });
                
            })
            .Build();
    }

    protected override void OnStartup(StartupEventArgs e)
    {
        _host.Start();

        MainWindow = _host.Services.GetRequiredService<MainWindow>();
        MainWindow.Show();

        base.OnStartup(e);
    }
}