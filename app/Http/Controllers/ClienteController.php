<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cliente;


class ClienteController extends Controller
{
    
    public function listar()
    {
    	$clientes = CLiente::get();

    	$clientes->map(function(&$cliente) {
    		$minutos = 0;
    		$segundos = 0;

    		if($cliente->saida !== null) {
	    		$to = $cliente->saida;
				$from = $cliente->entrada;
				$minutos = 0;

				
				$minutos = $to->diffInMinutes($from);
				
				
				$segundos = 0;

				if($minutos == 0) {				
					$segundos = $to->diffInSeconds($from);
				}	
    		}
			

			$cliente->minutos = $minutos;
			$cliente->segundos = $segundos;
			
    	});


    	return response()->json(['status' => true, 'dados' => $clientes]);
    }
}
