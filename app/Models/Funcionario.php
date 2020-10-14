<?php


namespace App\Models;

use Spatie\Sluggable\HasSlug;
use Spatie\Sluggable\SlugOptions;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Funcionario extends Model
{
	use HasSlug;

    protected $table = 'funcionario';

    protected $fillable = [
        'nome',
        'slug',
    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];


    public function expediente()
    {
        return $this->hasMany(Expediente::class);
    }


    public function getUpdatedAtAttribute($value)
    {
        return Carbon::parse($value)->format('d/m/Y H:i');
    }


    public function getSlugOptions() : SlugOptions
    {
        return SlugOptions::create()
            ->generateSlugsFrom('nome')
            ->saveSlugsTo('slug');
    }


    /**
     * Get the route key for the model.
     *
     * @return string
     */
    public function getRouteKeyName()
    {
        return 'slug';
    }

}
