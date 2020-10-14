<?php

namespace App\Services;

use App\Models\Cliente;

class ClienteService {


	public function registrar(String $tipo = 'entrada', array $dados)
	{
		$nome = \Str::random(40);	
		if(isset($dados['nome'])) {
			$nome = $dados['nome'];
		}

		$registro = ['nome' => $nome, 'expediente' => $dados['expediente']];
		
		if($tipo === 'entrada') {
			$registro['entrada'] = now()->format('Y-m-d H:i:s');;
		} else {
			$registro['saida'] = now()->format('Y-m-d H:i:s');
		}
		
		if(isset($dados['id'])) {
			$cliente = Cliente::where('id', $dados['id'])->update($registro);
		} else {
			$cliente = Cliente::create($registro);
		}


		return session(['cliente' => $cliente]);
	}


}