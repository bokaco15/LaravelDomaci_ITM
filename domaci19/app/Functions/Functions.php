<?php

    namespace App\Functions;

    class Functions
    {
        public static function addTmpColor($temp)
        {
            if ($temp <= 0) {
                return 'text-info';
            } elseif ($temp <= 15) {
                return 'text-primary';
            } elseif ($temp <= 25) {
                return 'text-success';
            } else {
                return 'text-danger';
            }
        }

        const WEATHER_ICONS = [
            'sunny'=>'fa-solid fa-sun text-warning',
            'rainy'=>'fa-solid fa-cloud-rain text-primary',
            'snowy'=>'fa-solid fa-snowflake text-info',
            'cloudy'=>'fa-solid fa-cloud-sun-rain text-info'
        ];
        public static function whatIsWeatherType($weather_type)
        {
            if(in_array($weather_type, self::WEATHER_ICONS)){
                return self::WEATHER_ICONS[$weather_type];
            } else {
                return 'fa-solid fa-sun text-warning';
            }
        }
    }

//    function addTmpColor($temp)
//    {
//        if ($temp <= 0) {
//            return 'text-info';
//        } elseif ($temp <= 15) {
//            return 'text-primary';
//        } elseif ($temp <= 25) {
//            return 'text-success';
//        } else {
//            return 'text-danger';
//        }
//    }

?>
