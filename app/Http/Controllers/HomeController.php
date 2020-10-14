<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\ClienteService;
use App\Services\FuncionarioService;
use App\Services\ExpedienteService;


class HomeController extends Controller
{

	protected $clienteServ;

	public function __construct(ClienteService $clienteServ, FuncionarioService $funcionarioServ, ExpedienteService $expedienteServ)
	{
		$this->clienteServ = $clienteServ;
		$this->funcionarioServ = $funcionarioServ;
		$this->expedienteServ = $expedienteServ;
	}

    public function index()
    {

    	$haFuncionario = $this->expedienteServ->verificaSeHaFuncionarioNoExpediente();

    	if(!session('cliente')) {

    		$dados = [
    			'expediente' => $haFuncionario->count() > 0 ? 1 : 0
    		];

    		$this->clienteServ->registrar('entrada', $dados);
    	}

    	$cliente = session('cliente');

    	return view('home.index');
    }


    public function registrarSaida()
    {
    	try {
			$cliente = session('cliente');
	    	$haFuncionario = $this->expedienteServ->verificaSeHaFuncionarioNoExpediente();

	    	$dados = [
	    		'id' => $cliente->id,
	    		'nome' => $cliente->nome,
	    		'entrada' => $cliente->entrada,
	    		'expediente' => $haFuncionario->count() > 0 ? 1 : 0
	    	];

	    	$this->clienteServ->registrar('saida', $dados);

	    	session()->forget('cliente');

	    	return response()->json(['status' => true]);

    	} catch(\Exception $e) {
    		return response()->json(['status' => false]);
    	}
    }
}
