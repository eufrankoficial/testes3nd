<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Funcionario;

class FuncionarioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        

        $funcionarios = [
        	[
        		'nome' => 'Franke',
        		'slug' => 'franke'
        	],
        	[
        		'nome' => 'Maria Eduarda',
        		'slug' => 'maria-eduarda'
        	]
        ];

        foreach ($funcionarios as $fun) {
        	Funcionario::create($fun);
        }
    }
}
