<?php

namespace App\Services;

use App\Models\Funcionario;
use App\Models\Expediente;
use Carbon\Carbon;

class ExpedienteService {


	function verificaSeHaFuncionarioNoExpediente()
	{

		$dia = Carbon::now()->dayOfWeek;

		$expediente = Expediente::with(['funcionario'])->where('dia_semana_id', $dia)->get();

		$expediente = $expediente->filter(function($exped) {
			return ($this->converteHoraEmSegundos($exped->horario_entrada) <= $this->converteHoraEmSegundos(now()->format('H:i')) && ($this->converteHoraEmSegundos(now()->format('h:i')) <= $this->converteHoraEmSegundos($exped->horario_saida)));
		});

		return $expediente;
	}


	function converteHoraEmSegundos($hora)
	{
		$str_time = $hora;

		sscanf($str_time, "%d:%d:%d", $hours, $minutes, $seconds);

		$time_seconds = isset($hours) ? $hours * 3600 + $minutes * 60 + $seconds : $minutes * 60 + $seconds;

		return $time_seconds;
	}


}