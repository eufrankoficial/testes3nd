<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Expediente extends Model
{
    protected $table = 'expediente';

    protected $fillable = [
        'funcionario_id',
        'dia_semana_id',
        'sem_expediente',
        'horario_entrada',
        'horario_saida'
    ];

    protected $dates = [
        'created_at',
        'updated_at',
        'horario_entrada',
        'horario_saida'
    ];


    public function funcionario()
    {
        return $this->belongsTo(Funcionario::class, 'funcionario_id', 'id');
    }


    public function diaSemana()
    {
        return $this->belongsTo(App\Models\DiaSemana::class, 'dia_semana_id', 'id');
    }


    public function getNomeAttribute()
    {
        return DiaSemana::DIA_SEMANA[$this->attributes['dia_semana_id']];
    }

    public function getHorarioEntradaAttribute($value)
    {
        return Carbon::parse($value)->format('d/m/Y H:i');
    }

    public function getHorarioSaidaAttribute($value)
    {
        return Carbon::parse($value)->format('d/m/Y H:i');
    }
}
