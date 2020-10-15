using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;

namespace Tamagochi
{
    [Activity(Label = "Settings", Theme = "@style/AppTheme.NoActionBar")]
    public class Settings : AppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
           Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.action_settings);

            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);
            Button save= FindViewById<Button>(Resource.Id.buttonSave);
            //FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.fab);
            save.Click += saveSettingsOnClick;
        }

        private void saveSettingsOnClick(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            return true;
        }
    }
}