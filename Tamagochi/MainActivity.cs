﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using Android;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Locations;
using Android.OS;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Support.V4.App;
using Android.Support.V4.Content;
using Android.Support.V7.App;
using Android.Telephony;
using Android.Util;
using Android.Views;
using Android.Widget;
using Plugin.Geolocator.Abstractions;
using Plugin.Messaging;
using Xamarin.Essentials;

namespace Tamagochi
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity, ILocationListener
    {
        LocationManager locationManager;
        TamagochiViewModel vm = new TamagochiViewModel();
        Settings settings=new Settings();
        private bool isRequestingLocationUpdates =false;
        static readonly int RC_LAST_LOCATION_PERMISSION_CHECK = 1000;
        const long ONE_MINUTE = 60 * 1000;
        String MyPlace { get; set; } = string.Empty;
        String MyAddress { get; set; } = string.Empty;
        TextView place;
        TextView address;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);
            locationManager = (LocationManager)GetSystemService(LocationService);
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);
            place = FindViewById<TextView>(Resource.Id.myPlace);
            MyPlace = place.Text;
            settings = vm.GetSettings();
            address = FindViewById<TextView>(Resource.Id.myAddress);
            MyAddress = address.Text;
            if(string.IsNullOrEmpty(MyPlace))
            {
                GetPositionAsync(null);
            }
            else
            {
                if (locationManager.AllProviders.Contains(LocationManager.NetworkProvider)
               && locationManager.IsProviderEnabled(LocationManager.NetworkProvider))
                {
                    locationManager = GetSystemService(LocationService) as LocationManager;
                    TimerCallback timeCB = new TimerCallback(GetPositionAsync);
                    Timer time = new Timer(timeCB, null, 0, 120000);
                }

            }
           
            Button get = FindViewById<Button>(Resource.Id.buttonGet);
            get.Click += getButtonOnClick;


        }
        public void GetPositionAsync(object state)
        {
            if (settings == null)
            {
                SetContentView(Resource.Layout.action_settings);
                Intent intent = new Intent(this, typeof(SettingsActivity));
                StartActivity(intent);
                return;
            }
            else
            {
                 GetLocationAsync();
                if (!settings.IsAutomaticSet)
                {
                    settings.IsAutomaticSet = true;
                    SendSmS();
                    settings.IsAutomaticSet = false;
                }
                RequestLocationUpdates();
            }

        }
        private void getButtonOnClick(object sender, EventArgs e)
        {
            locationManager = GetSystemService(LocationService) as LocationManager;
            GetPositionAsync(null);
        }

        void RequestLocationUpdates()
        {
            if (isRequestingLocationUpdates)
            {
                isRequestingLocationUpdates = false;
                StopRequestingLocationUpdates();
            }
            else
            {
                if (ContextCompat.CheckSelfPermission(this, Manifest.Permission.AccessFineLocation) == Permission.Granted)
                {
                    StartRequestingLocationUpdates();
                    isRequestingLocationUpdates = true;
                }
                else
                {
                    RequestLocationPermission(RC_LAST_LOCATION_PERMISSION_CHECK);
                }
            }
        }

        private void StartRequestingLocationUpdates()
        {
         
            locationManager.RequestLocationUpdates(LocationManager.GpsProvider, ONE_MINUTE, 1, this);
        }

        private void RequestLocationPermission(int requestCode)
        {
            isRequestingLocationUpdates = false;
           
                ActivityCompat.RequestPermissions(this, new[] { Manifest.Permission.AccessFineLocation }, requestCode);
            
        }

        private void StopRequestingLocationUpdates()
        {
            locationManager.RemoveUpdates(this);
        }


        public void SendSmS()
        {
            ActivityCompat.RequestPermissions(this, new String[] { Manifest.Permission.SendSms }, 1);
        
            if (!string.IsNullOrEmpty(settings.SecurtiyMobilePhone) && settings.IsAutomaticSet)
            {
                var smsMessenger = CrossMessaging.Current.SmsMessenger;
                if (smsMessenger.CanSendSmsInBackground)
                    smsMessenger.SendSmsInBackground(settings.SecurtiyMobilePhone, $"I have a problem {MyPlace}\r\n {MyAddress}");
            }


        }
        private async System.Threading.Tasks.Task GetLocationAsync()
        {
            try
            {
                vm.GetSettings();
                var criteria = new Criteria { PowerRequirement = Power.Medium };
                var bestProvider = locationManager.GetBestProvider(criteria, true);
                var location = locationManager.GetLastKnownLocation(bestProvider);
                MyPlace = $" Latitude: {location.Latitude} Longitude: {location.Longitude}";
                await GetAdressPlaceAsync(location);
                TextView x = FindViewById<TextView>(Resource.Id.myPlace);
                x.Text=MyPlace;
                settings.LastPlase = MyPlace;
                settings.LastAddress = MyAddress;
                await vm.AppentSettingsAsync(settings);
               
            }
            catch
            {
                Toast.MakeText(ApplicationContext, "Please enable GPS", ToastLength.Long).Show();
                if (!string.IsNullOrEmpty(settings.LastPlase))
                {
                    MyPlace = settings.LastPlase;
                    MyAddress = settings.LastAddress;
                }
                else
                {
                    MyPlace = string.Empty;
                    MyAddress = string.Empty;
                }
            }
        }

        private async System.Threading.Tasks.Task GetAdressPlaceAsync(Android.Locations.Location location)
        {
            var placemarks = await Geocoding.GetPlacemarksAsync(location.Latitude, location.Longitude);
            var placemark = placemarks?.FirstOrDefault();
            if (placemark != null)
            {
                var geocodeAddress =
                    $"Country Code:     {placemark.CountryCode}\n" +
                    $"Country Name:     {placemark.CountryName}\n" +
                    $"Locality:        {placemark.Locality}\n" +
                    $"Postal Code:      {placemark.PostalCode}\n" +
                    $"Sub Admin Area:    {placemark.SubAdminArea}\n" +
                    $"Sub Locality:     {placemark.SubLocality}\n" +
                    $"Street:    {placemark.Thoroughfare}\n"+
                    $"Build: {placemark.SubThoroughfare}\n";

               TextView x = FindViewById<TextView>(Resource.Id.myAddress);
                x.Text = geocodeAddress;
                MyAddress = geocodeAddress;
            }


        }

        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            return true;
        }

        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            int id = item.ItemId;
            if (id == Resource.Id.action_settings)
            {
                SetContentView(Resource.Layout.action_settings);
                Intent intent = new Intent(this, typeof(SettingsActivity));
                StartActivity(intent);
                return true;
            }
           

            return base.OnOptionsItemSelected(item);
        }
        protected override void OnStart()
        {
            base.OnStart();
            locationManager = GetSystemService(LocationService) as LocationManager;
            GetPositionAsync(null);

        }

        protected override void OnPause()
        {
            locationManager.RemoveUpdates(this);
            base.OnPause();
        }
        protected override void OnResume()
        {
            base.OnResume();
            locationManager = GetSystemService(LocationService) as LocationManager;
          
        }
        protected override void OnRestart()
        {
            base.OnRestart();
            locationManager = GetSystemService(LocationService) as LocationManager;
            GetLocationAsync();
            SendSmS();
        }
        


        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        public void OnLocationChanged(Android.Locations.Location location)
        {
            GetLocationAsync();
        }

        public void OnProviderDisabled(string provider)
        {
            MyPlace = "Provider is unavaliable";
        }

        public void OnProviderEnabled(string provider)
        {
            Log.Debug("LocationExample", "The provider " + provider + " is enabled.");
        }

        public void OnStatusChanged(string provider, [GeneratedEnum] Availability status, Bundle extras)
        {
            if (status == Availability.OutOfService)
            {
                StopRequestingLocationUpdates();
                isRequestingLocationUpdates = false;
            }
        }
    }
}
