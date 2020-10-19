using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.Locations;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Newtonsoft.Json;
using Plugin.Geolocator;

namespace Tamagochi
{
   public class TamagochiViewModel
    {
        public async System.Threading.Tasks.Task AppentSettingsAsync(Settings settings)
        {

            var jsonData = JsonConvert.SerializeObject(settings);
            var backingFile = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "settings.json");
            using (var writer = File.CreateText(backingFile))
            {
                await writer.WriteLineAsync(jsonData);
            }
        }
        
        public  Settings GetSettings()
        {
           
                var backingFile = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "settings.json");

                if (backingFile == null || !File.Exists(backingFile))
                {
                    return null;
                }
                string FileData = string.Empty;
                using (var reader = new StreamReader(backingFile, true))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        FileData = line;
                    }
                }
                var currentSettings= JsonConvert.DeserializeObject<Settings>(FileData);
            return currentSettings;


        }

        public bool ValidateSettings(Settings settings)
        {
            try
            {
               
                return Android.Util.Patterns.Phone.Matcher(settings.SecurtiyMobilePhone).Matches();

            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}