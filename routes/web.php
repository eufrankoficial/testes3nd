<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\FuncionarioController;
use App\Http\Controllers\ClienteController;

Route::get('/', [HomeController::class, 'index'])->name('home.index');
Route::get('/funcionario-listar', [FuncionarioController::class, 'index'])->name('funcionario.index');
Route::get('/funcionario-novo', [FuncionarioController::class, 'create'])->name('funcionario.create');
Route::get('/funcionario-view/{slug}', [FuncionarioController::class, 'show'])->name('funcionario.show');
Route::post('/funcionario-adicionar', [FuncionarioController::class, 'store'])->name('funcionario.store');
Route::post('/funcionario-editar/{slug}', [FuncionarioController::class, 'update'])->name('funcionario.update');
Route::get('/funcionario-excluir/{slug}', [FuncionarioController::class, 'destroy'])->name('funcionario.delete');
Route::get('/registrar-saida-cliente', [HomeController::class, 'registrarSaida'])->name('cliente.saida');
Route::get('/listar-clientes', [ClienteController::class, 'listar'])->name('cliente.listar');


