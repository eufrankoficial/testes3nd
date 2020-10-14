<?php

namespace App\Models;

use Spatie\Sluggable\HasSlug;
use Spatie\Sluggable\SlugOptions;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Cliente extends Model
{

    protected $table = 'cliente';


    protected $fillable = [
        'nome',
        'expediente',
        'entrada',
        'saida'
    ];

    public $timestamps = false;

    protected $dates = [
        'entrada',
        'saida',
    ];


    public function getEntradaTextAttribute($value)
    {
        return Carbon::parse($this->entrada)->format('d/m/Y H:i');
    }

    public function getSaidaTextAttribute($value)
    {
        return Carbon::parse($this->saida)->format('d/m/Y H:i');
    }
}
