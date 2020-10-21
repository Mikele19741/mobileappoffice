using System;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;

namespace Tamagochi
{
    [Activity(Label = "Settings", Theme = "@style/AppTheme.NoActionBar")]
    public class SettingsActivity : AppCompatActivity
    {
        EditText sMobilePhone;
        CheckBox isAutmoanticSend;
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
           var settings= tVm.GetSettings();
            sMobilePhone = FindViewById<EditText>(Resource.Id.editMobilePhone);
            isAutmoanticSend = FindViewById<CheckBox>(Resource.Id.checkBoxAutomaticSend);
            if (settings != null)
            {
                sMobilePhone.Text = settings.SecurtiyMobilePhone;
                isAutmoanticSend.Checked = settings.IsAutomaticSet;
            }
        }

        private  async void saveSettingsOnClick(object sender, EventArgs e)
        {
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
        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            int id = item.ItemId;
            if (id == Resource.Id.activity_main)
            {
                SetContentView(Resource.Layout.activity_main);
                Intent intent = new Intent(this, typeof(MainActivity));
                StartActivity(intent);
                return true;
            }

            return base.OnOptionsItemSelected(item);
        }
        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            return true;
        }
    }
}