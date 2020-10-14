<?php

namespace App\Services;

use App\Models\Funcionario;
use App\Models\DiaSemana;
use App\Models\Expediente;
use Carbon\Carbon;

class FuncionarioService {


	function funcionarios(bool $paginate = true)
	{
		$funcionarios = Funcionario::orderBy('nome', 'asc');

		if(!$paginate)
			return $funcionarios->get();

		return $funcionarios->paginate();
	}


	function funcionario(String $slug, array $with = []): Funcionario
	{
		return Funcionario::with(['expediente'])->where('slug', $slug)->first();
	}


	function salvar(array $dados, $slug = null)
	{
		if(!$slug)
			return Funcionario::create($dados);

		return Funcionario::where('slug', $slug)->update($dados);
	}


	function salvarExpediente($funcionario, $expediente)
	{
		foreach($expediente as $exped) {
			Expediente::create([
				'funcionario_id' => $funcionario->id,
				'dia_semana_id' => $exped['dia_semana_id'],
				'horario_entrada' => $exped['horario_entrada'],
				'horario_saida' => $exped['horario_saida']
			]);
		}

		return $funcionario;
		
	}


	function excluir(String $slug)
	{
		$funcionario = Funcionario::with(['expediente'])->where('slug', $slug)->first();
		$funcionario->expediente()->delete();
		return Funcionario::where('slug', $slug)->delete();
	}


	function dependencias()
	{
		$diasSEmana = DiaSemana::orderBy('id', 'asc')->get();

		return [
			'dias' => $diasSEmana
		];
	}

}