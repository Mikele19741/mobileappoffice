﻿using System;
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
using Android.Util;
using Android.Views;
using Android.Widget;

namespace Tamagochi
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity, ILocationListener
    {
        LocationManager locationManager;
        private bool isRequestingLocationUpdates =false;
        static readonly int RC_LAST_LOCATION_PERMISSION_CHECK = 1000;
        static readonly int RC_LOCATION_UPDATES_PERMISSION_CHECK = 1100;
        const long ONE_MINUTE = 60 * 1000;
        const long FIVE_MINUTES = 5 * ONE_MINUTE;
        String MyPlace { get; set; } = string.Empty;
        TextView place;
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
            var myAddress = FindViewById<TextView>(Resource.Id.myAddress);
            if (locationManager.AllProviders.Contains(LocationManager.NetworkProvider)
                && locationManager.IsProviderEnabled(LocationManager.NetworkProvider))
            {
                locationManager = GetSystemService(LocationService) as LocationManager;
                GetLocation();
                RequestLocationUpdates();
            }
            else
            {
                //Snackbar.Make(, myPlace.Va, Snackbar.LengthIndefinite)
                //        .SetAction(Resource.String.ok, delegate { FinishAndRemoveTask(); })
                //        .Show();
            }

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

        private void GetLocation()
        {
            try
            {
                var criteria = new Criteria { PowerRequirement = Power.Medium };
                var bestProvider = locationManager.GetBestProvider(criteria, true);
                var location = locationManager.GetLastKnownLocation(bestProvider);
                MyPlace = $" Latitude: {location.Latitude} Longitude: {location.Longitude}";

                TextView x = FindViewById<TextView>(Resource.Id.myPlace);
             x.Text=MyPlace;
            }
            catch
            {
                MyPlace = string.Empty;
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
            if (id == Resource.Id.action_maps)
            {
                SetContentView(Resource.Layout.action_maps);
                Intent intent = new Intent(this, typeof(MapsActivity));
                StartActivity(intent);
                return true;
            }

            return base.OnOptionsItemSelected(item);
        }
        protected override void OnStart()
        {
            base.OnStart();
            locationManager = GetSystemService(LocationService) as LocationManager;
            GetLocation();
        }

        protected override void OnPause()
        {
            locationManager.RemoveUpdates(this);
            base.OnPause();
        }
       

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        public void OnLocationChanged(Location location)
        {
            GetLocation();
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
