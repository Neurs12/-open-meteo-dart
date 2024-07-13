import 'package:open_meteo/weather_api_openmeteo_sdk_generated.dart';

/// Hourly enums provided by Open-Meteo. Storing all parameters available from documentation.
enum Hourly {
  temperature_2m,
  relative_humidity_2m,
  dew_point_2m,
  apparent_temperature,
  precipitation_probability,
  precipitation,
  rain,
  showers,
  snowfall,
  snow_depth,
  weather_code,
  pressure_msl,
  surface_pressure,
  cloud_cover,
  cloud_cover_low,
  cloud_cover_mid,
  cloud_cover_high,
  visibility,
  evapotranspiration,
  et0_fao_evapotranspiration,
  vapour_pressure_deficit,
  wind_speed_10m,
  wind_speed_80m,
  wind_speed_120m,
  wind_speed_180m,
  wind_direction_10m,
  wind_direction_80m,
  wind_direction_120m,
  wind_direction_180m,
  wind_gusts_10m,
  temperature_80m,
  temperature_120m,
  temperature_180m,
  soil_temperature_0cm,
  soil_temperature_6cm,
  soil_temperature_18cm,
  soil_temperature_54cm,
  soil_moisture_0_to_1cm,
  soil_moisture_1_to_3cm,
  soil_moisture_3_to_9cm,
  soil_moisture_9_to_27cm,
  soil_moisture_27_to_81cm,
  uv_index,
  uv_index_clear_sky,
  is_day,
  cape,
  freezing_level_height,
  sunshine_duration,
  shortwave_radiation,
  direct_radiation,
  diffuse_radiation,
  direct_normal_irradiance,
  global_tilted_irradiance,
  terrestrial_radiation,
  shortwave_radiation_instant,
  direct_radiation_instant,
  diffuse_radiation_instant,
  direct_normal_irradiance_instant,
  global_tilted_irradiance_instant,
  terrestrial_radiation_instant,
  temperature_1000hPa,
  temperature_975hPa,
  temperature_950hPa,
  temperature_925hPa,
  temperature_900hPa,
  temperature_850hPa,
  temperature_800hPa,
  temperature_700hPa,
  temperature_600hPa,
  temperature_500hPa,
  temperature_400hPa,
  temperature_300hPa,
  temperature_250hPa,
  temperature_200hPa,
  temperature_150hPa,
  temperature_100hPa,
  temperature_70hPa,
  temperature_50hPa,
  temperature_30hPa,
  relative_humidity_1000hPa,
  relative_humidity_975hPa,
  relative_humidity_950hPa,
  relative_humidity_925hPa,
  relative_humidity_900hPa,
  relative_humidity_850hPa,
  relative_humidity_800hPa,
  relative_humidity_700hPa,
  relative_humidity_600hPa,
  relative_humidity_500hPa,
  relative_humidity_400hPa,
  relative_humidity_300hPa,
  relative_humidity_250hPa,
  relative_humidity_200hPa,
  relative_humidity_150hPa,
  relative_humidity_100hPa,
  relative_humidity_70hPa,
  relative_humidity_50hPa,
  relative_humidity_30hPa,
  cloud_cover_1000hPa,
  cloud_cover_975hPa,
  cloud_cover_950hPa,
  cloud_cover_925hPa,
  cloud_cover_900hPa,
  cloud_cover_850hPa,
  cloud_cover_800hPa,
  cloud_cover_700hPa,
  cloud_cover_600hPa,
  cloud_cover_500hPa,
  cloud_cover_400hPa,
  cloud_cover_300hPa,
  cloud_cover_250hPa,
  cloud_cover_200hPa,
  cloud_cover_150hPa,
  cloud_cover_100hPa,
  cloud_cover_70hPa,
  cloud_cover_50hPa,
  cloud_cover_30hPa,
  windspeed_1000hPa,
  windspeed_975hPa,
  windspeed_950hPa,
  windspeed_925hPa,
  windspeed_900hPa,
  windspeed_850hPa,
  windspeed_800hPa,
  windspeed_700hPa,
  windspeed_600hPa,
  windspeed_500hPa,
  windspeed_400hPa,
  windspeed_300hPa,
  windspeed_250hPa,
  windspeed_200hPa,
  windspeed_150hPa,
  windspeed_100hPa,
  windspeed_70hPa,
  windspeed_50hPa,
  windspeed_30hPa,
  winddirection_1000hPa,
  winddirection_975hPa,
  winddirection_950hPa,
  winddirection_925hPa,
  winddirection_900hPa,
  winddirection_850hPa,
  winddirection_800hPa,
  winddirection_700hPa,
  winddirection_600hPa,
  winddirection_500hPa,
  winddirection_400hPa,
  winddirection_300hPa,
  winddirection_250hPa,
  winddirection_200hPa,
  winddirection_150hPa,
  winddirection_100hPa,
  winddirection_70hPa,
  winddirection_50hPa,
  winddirection_30hPa,
  geopotential_height_1000hPa,
  geopotential_height_975hPa,
  geopotential_height_950hPa,
  geopotential_height_925hPa,
  geopotential_height_900hPa,
  geopotential_height_850hPa,
  geopotential_height_800hPa,
  geopotential_height_700hPa,
  geopotential_height_600hPa,
  geopotential_height_500hPa,
  geopotential_height_400hPa,
  geopotential_height_300hPa,
  geopotential_height_250hPa,
  geopotential_height_200hPa,
  geopotential_height_150hPa,
  geopotential_height_100hPa,
  geopotential_height_70hPa,
  geopotential_height_50hPa,
  geopotential_height_30hPa,
  wind_speed_100m,
  wind_direction_100m,
  soil_temperature_0_to_7cm,
  soil_temperature_7_to_28cm,
  soil_temperature_28_to_100cm,
  soil_temperature_100_to_255cm,
  soil_moisture_0_to_7cm,
  soil_moisture_7_to_28cm,
  soil_moisture_28_to_100cm,
  soil_moisture_100_to_255cm,
  surface_temperature,
  soil_temperature_0_to_10cm,
  soil_temperature_10_to_40cm,
  soil_temperature_40_to_100cm,
  soil_temperature_100_to_200cm,
  soil_moisture_0_to_10cm,
  soil_moisture_10_to_40cm,
  soil_moisture_40_to_100cm,
  soil_moisture_100_to_200cm,
  wave_height,
  wave_direction,
  wave_period,
  wind_wave_height,
  wind_wave_direction,
  wind_wave_period,
  wind_wave_peak_period,
  swell_wave_height,
  swell_wave_direction,
  swell_wave_period,
  swell_wave_peak_period,
  ocean_current_velocity,
  ocean_current_direction,
  pm10,
  pm2_5,
  carbon_monoxide,
  nitrogen_dioxide,
  sulphur_dioxide,
  ozone,
  aerosol_optical_depth,
  dust,
  ammonia,
  alder_pollen,
  birch_pollen,
  grass_pollen,
  mugwort_pollen,
  olive_pollen,
  ragweed_pollen,
  european_aqi,
  european_aqi_pm2_5,
  european_aqi_pm10,
  european_aqi_nitrogen_dioxide,
  european_aqi_ozone,
  european_aqi_sulphur_dioxide,
  us_aqi,
  us_aqi_pm2_5,
  us_aqi_pm10,
  us_aqi_nitrogen_dioxide,
  us_aqi_carbon_monoxide,
  us_aqi_ozone,
  us_aqi_sulphur_dioxide;

  static Hourly? fromVariable(VariableWithValues v) => switch (v.variable) {
        Variable.apparent_temperature => Hourly.apparent_temperature,
        Variable.pressure_msl => Hourly.pressure_msl,
        Variable.surface_pressure => Hourly.surface_pressure,
        Variable.cloud_cover => Hourly.cloud_cover,
        Variable.cloud_cover_low => Hourly.cloud_cover_low,
        Variable.cloud_cover_mid => Hourly.cloud_cover_mid,
        Variable.cloud_cover_high => Hourly.cloud_cover_high,
        Variable.shortwave_radiation => Hourly.shortwave_radiation,
        Variable.direct_radiation => Hourly.direct_radiation,
        Variable.direct_normal_irradiance => Hourly.direct_normal_irradiance,
        Variable.diffuse_radiation => Hourly.diffuse_radiation,
        Variable.vapour_pressure_deficit => Hourly.vapour_pressure_deficit,
        Variable.cape => Hourly.cape,
        Variable.evapotranspiration => Hourly.evapotranspiration,
        Variable.et0_fao_evapotranspiration =>
          Hourly.et0_fao_evapotranspiration,
        Variable.precipitation => Hourly.precipitation,
        Variable.snowfall => Hourly.snowfall,
        Variable.precipitation_probability => Hourly.precipitation_probability,
        Variable.rain => Hourly.rain,
        Variable.showers => Hourly.showers,
        Variable.weather_code => Hourly.weather_code,
        Variable.snow_depth => Hourly.snow_depth,
        Variable.freezing_level_height => Hourly.freezing_level_height,
        Variable.visibility => Hourly.visibility,
        Variable.is_day => Hourly.is_day,
        Variable.global_tilted_irradiance => Hourly.global_tilted_irradiance,
        Variable.sunshine_duration => Hourly.sunshine_duration,
        Variable.surface_temperature => Hourly.surface_temperature,
        Variable.wave_height => Hourly.wave_height,
        Variable.wind_wave_height => Hourly.wind_wave_height,
        Variable.swell_wave_height => Hourly.swell_wave_height,
        Variable.wave_direction => Hourly.wave_direction,
        Variable.wind_wave_direction => Hourly.wind_wave_direction,
        Variable.swell_wave_direction => Hourly.swell_wave_direction,
        Variable.wave_period => Hourly.wave_period,
        Variable.wind_wave_period => Hourly.wind_wave_period,
        Variable.swell_wave_period => Hourly.swell_wave_period,
        Variable.wind_wave_peak_period => Hourly.wind_wave_peak_period,
        Variable.swell_wave_peak_period => Hourly.swell_wave_peak_period,
        Variable.ocean_current_velocity => Hourly.ocean_current_velocity,
        Variable.ocean_current_direction => Hourly.ocean_current_direction,
        Variable.pm10 => Hourly.pm10,
        Variable.pm2p5 => Hourly.pm2_5,
        Variable.carbon_monoxide => Hourly.carbon_monoxide,
        Variable.nitrogen_dioxide => Hourly.nitrogen_dioxide,
        Variable.sulphur_dioxide => Hourly.sulphur_dioxide,
        Variable.ozone => Hourly.ozone,
        Variable.ammonia => Hourly.ammonia,
        Variable.aerosol_optical_depth => Hourly.aerosol_optical_depth,
        Variable.dust => Hourly.dust,
        Variable.uv_index => Hourly.uv_index,
        Variable.uv_index_clear_sky => Hourly.uv_index_clear_sky,
        Variable.alder_pollen => Hourly.alder_pollen,
        Variable.birch_pollen => Hourly.birch_pollen,
        Variable.grass_pollen => Hourly.grass_pollen,
        Variable.mugwort_pollen => Hourly.mugwort_pollen,
        Variable.olive_pollen => Hourly.olive_pollen,
        Variable.ragweed_pollen => Hourly.ragweed_pollen,
        Variable.european_aqi => Hourly.european_aqi,
        Variable.european_aqi_pm2p5 => Hourly.european_aqi_pm2_5,
        Variable.european_aqi_pm10 => Hourly.european_aqi_pm10,
        Variable.european_aqi_nitrogen_dioxide =>
          Hourly.european_aqi_nitrogen_dioxide,
        Variable.european_aqi_ozone => Hourly.european_aqi_ozone,
        Variable.european_aqi_sulphur_dioxide =>
          Hourly.european_aqi_sulphur_dioxide,
        Variable.us_aqi => Hourly.us_aqi,
        Variable.us_aqi_pm2p5 => Hourly.us_aqi_pm2_5,
        Variable.us_aqi_pm10 => Hourly.us_aqi_pm10,
        Variable.us_aqi_nitrogen_dioxide => Hourly.us_aqi_nitrogen_dioxide,
        Variable.us_aqi_ozone => Hourly.us_aqi_ozone,
        Variable.us_aqi_sulphur_dioxide => Hourly.us_aqi_sulphur_dioxide,
        Variable.us_aqi_carbon_monoxide => Hourly.us_aqi_carbon_monoxide,
        Variable.temperature => Hourly.temperature_2m,
        Variable.relative_humidity => Hourly.relative_humidity_2m,
        Variable.dew_point => Hourly.dew_point_2m,
        Variable.wind_gusts => Hourly.wind_gusts_10m,
        Variable.wind_speed => switch (v.altitude) {
            10 => Hourly.wind_speed_10m,
            80 => Hourly.wind_speed_80m,
            100 => Hourly.wind_speed_100m,
            120 => Hourly.wind_speed_120m,
            180 => Hourly.wind_speed_180m,
            _ => null,
          },
        Variable.wind_direction => switch (v.altitude) {
            10 => Hourly.wind_direction_10m,
            80 => Hourly.wind_direction_80m,
            100 => Hourly.wind_direction_100m,
            120 => Hourly.wind_direction_120m,
            180 => Hourly.wind_direction_180m,
            _ => null,
          },
        Variable.soil_temperature => switch (((v.depth), (v.depthTo))) {
            (0, 0) => Hourly.soil_temperature_0cm,
            (6, 6) => Hourly.soil_temperature_6cm,
            (18, 18) => Hourly.soil_temperature_18cm,
            (54, 54) => Hourly.soil_temperature_54cm,
            (0, 7) => Hourly.soil_temperature_0_to_7cm,
            (7, 28) => Hourly.soil_temperature_7_to_28cm,
            (28, 100) => Hourly.soil_temperature_28_to_100cm,
            (100, 255) => Hourly.soil_temperature_100_to_255cm,
            (0, 10) => Hourly.soil_temperature_0_to_10cm,
            (10, 40) => Hourly.soil_temperature_10_to_40cm,
            (40, 100) => Hourly.soil_temperature_40_to_100cm,
            (100, 200) => Hourly.soil_temperature_100_to_200cm,
            _ => null,
          },
        Variable.soil_moisture => switch (((v.depth), (v.depthTo))) {
            (0, 1) => Hourly.soil_moisture_0_to_1cm,
            (1, 3) => Hourly.soil_moisture_1_to_3cm,
            (3, 9) => Hourly.soil_moisture_3_to_9cm,
            (9, 27) => Hourly.soil_moisture_9_to_27cm,
            (27, 81) => Hourly.soil_moisture_27_to_81cm,
            (0, 7) => Hourly.soil_moisture_0_to_7cm,
            (7, 28) => Hourly.soil_moisture_7_to_28cm,
            (28, 100) => Hourly.soil_moisture_28_to_100cm,
            (100, 255) => Hourly.soil_moisture_100_to_255cm,
            (0, 10) => Hourly.soil_moisture_0_to_10cm,
            (10, 40) => Hourly.soil_moisture_10_to_40cm,
            (40, 100) => Hourly.soil_moisture_40_to_100cm,
            (100, 200) => Hourly.soil_moisture_100_to_200cm,
            _ => null,
          },
        _ => null,
      };
}
