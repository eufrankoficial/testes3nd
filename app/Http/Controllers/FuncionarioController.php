<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\FuncionarioService;

class FuncionarioController extends Controller
{

    protected $funcionarioServ;

    public function __construct(FuncionarioService $funcionarioServ)
    {
        $this->funcionarioServ = $funcionarioServ;
    }
    
    public function index()
    {
       return response()->json(['dados' => $this->funcionarioServ->funcionarios(true)]);
    }

    
    public function create()
    {
        return response()->json(
            $this->funcionarioServ->dependencias()
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {

            $dados = $request->except('_token');
            $expediente = $dados['expediente']['diasSemanaExped'];
            unset($dados['expediente']['diasSemanaExped']);


            $funcionario = $this->funcionarioServ->salvar($dados);
            $this->funcionarioServ->salvarExpediente(
                $funcionario, $expediente
            );
            

            return response()->json(['status' => true, 'msg' => 'Salvo com sucesso!']);

        } catch(\Exception $e) {
            return response()->json(['status' => false, 'msg' => 'Não foi possível salvar']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $funcionario = $this->funcionarioServ->funcionario($slug, ['expediente']);
        
        if(!$funcionario)
            abort(404);

        return response()->json($funcionario);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $slug)
    {
        try {

            $dados = $request->except('_token');

            $retorno = $this->funcionarioServ->salvar($dados, $slug);


        } catch(\Exception $e) {
            return response()->json(['status' => false, 'msg' => 'Não foi possível salvar']);
        }

        return response()->json(['status' => true, 'msg' => 'Salvo com sucesso']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($slug)
    {
        try {

            $this->funcionarioServ->excluir($slug);
            
            return response()->json(['status' => true]);
        } catch(\Exception $e) {
            dd($e);
            return response()->json(['status' => false]);
        }
    }
}
