<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\DiaSemana;

class DiaSemanaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dias = [
        	[
        		'dia_semana' => 'Segunda-Feira',
        		'slug' => 'segunda-feira'
        	],
        	[
        		'dia_semana' => 'Terça-Feira',
        		'slug' => 'terca-feira'
        	],
        	[
        		'dia_semana' => 'Quarta-Feira',
        		'slug' => 'quarta-feira'
        	],
        	[
        		'dia_semana' => 'Quinta-Feira',
        		'slug' => 'quinta-feira'
        	],
        	[
        		'dia_semana' => 'Sexta-Feira',
        		'slug' => 'sexta-feira'
        	],
        	[
        		'dia_semana' => 'Sábado',
        		'slug' => 'sabado'
        	],
        	[
        		'dia_semana' => 'Domingo',
        		'slug' => 'domingo'
        	]
        ];


        foreach ($dias as $dia) {
        	DiaSemana::create($dia);
        }
    }
}
