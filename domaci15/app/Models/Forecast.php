<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Forecast extends Model
{
    protected $table = 'forecasts';
    protected $fillable = ['city_id', 'temperature', 'date', 'weather_type', 'probabbility'];

    const WEATHERS = ['rainy', 'sunny', 'snowy', 'cloudy'];
    public function city()
    {
        return $this->hasOne(Cities::class, 'id', 'city_id');
    }

}
