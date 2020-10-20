using System;
using System.Collections.Generic;
using System.Linq;
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
        private bool isRequestingLocationUpdates =false;
        static readonly int RC_LAST_LOCATION_PERMISSION_CHECK = 1000;
        static readonly int RC_LOCATION_UPDATES_PERMISSION_CHECK = 1100;
        const long ONE_MINUTE = 60 * 1000;
        const long FIVE_MINUTES = 5 * ONE_MINUTE;
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
            address = FindViewById<TextView>(Resource.Id.myAddress);
            MyAddress = address.Text;
            if (locationManager.AllProviders.Contains(LocationManager.NetworkProvider)
                && locationManager.IsProviderEnabled(LocationManager.NetworkProvider))
            {
                locationManager = GetSystemService(LocationService) as LocationManager;
                GetLocationAsync();
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


        public void SendSmS()
        {
            ActivityCompat.RequestPermissions(this, new String[] { Manifest.Permission.SendSms }, 1);
            var vm = new TamagochiViewModel();
            var settings = vm.GetSettings();
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
                var criteria = new Criteria { PowerRequirement = Power.Medium };
                var bestProvider = locationManager.GetBestProvider(criteria, true);
                var location = locationManager.GetLastKnownLocation(bestProvider);
                
                MyPlace = $" Latitude: {location.Latitude} Longitude: {location.Longitude}";
                await GetAdressPlaceAsync(location);
                TextView x = FindViewById<TextView>(Resource.Id.myPlace);
                x.Text=MyPlace;
               
            }
            catch
            {
                Toast.MakeText(ApplicationContext, "Please check you geolocation permission", ToastLength.Long).Show();
                MyPlace = string.Empty;
            }
        }

        private async System.Threading.Tasks.Task GetAdressPlaceAsync(Android.Locations.Location location)
        {
            var placemarks = await Geocoding.GetPlacemarksAsync(location.Latitude, location.Longitude);
            var placemark = placemarks?.FirstOrDefault();
            if (placemark != null)
            {
                var geocodeAddress =
                    $"AdminArea:       {placemark.AdminArea}\n" +
                    $"CountryCode:     {placemark.CountryCode}\n" +
                    $"CountryName:     {placemark.CountryName}\n" +
                    $"FeatureName:     {placemark.FeatureName}\n" +
                    $"Locality:        {placemark.Locality}\n" +
                    $"PostalCode:      {placemark.PostalCode}\n" +
                    $"SubAdminArea:    {placemark.SubAdminArea}\n" +
                    $"SubLocality:     {placemark.SubLocality}\n" +
                    $"SubThoroughfare: {placemark.SubThoroughfare}\n" +
                    $"Thoroughfare:    {placemark.Thoroughfare}\n";

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
            GetLocationAsync();
            SendSmS();

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
