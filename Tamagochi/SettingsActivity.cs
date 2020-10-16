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
    public class SettingsActivity : AppCompatActivity
    {
        TamagochiViewModel tVm = new TamagochiViewModel();
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
           Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.action_settings);

            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);
            Button save= FindViewById<Button>(Resource.Id.buttonSave);
            save.Click += saveSettingsOnClick;
        }

        private  async void saveSettingsOnClick(object sender, EventArgs e)
        {
            var sMobilePhone = FindViewById<EditText>(Resource.Id.editMobilePhone);
            var isAutmoanticSend = FindViewById<CheckBox>(Resource.Id.checkBoxAutomaticSend);
            var settings = new Settings();
            settings.IsAutomaticSet = isAutmoanticSend.Checked;
            settings.SecurtiyMobilePhone = sMobilePhone.Text;
           var isValidated= tVm.ValidateSettings(settings);
            if(!isValidated)
            {
                Toast.MakeText(ApplicationContext, "Wrong phone", ToastLength.Long).Show();
            }
            else
            {
                await tVm.AppentSettingsAsync(settings);
                SetContentView(Resource.Layout.activity_main);
                Intent intent = new Intent(this, typeof(MainActivity));
                StartActivity(intent);
            }
           

        }

        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            return true;
        }
    }
}