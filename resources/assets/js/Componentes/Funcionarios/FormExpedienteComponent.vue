<template>	
    <div id="expendiente">
        <h3>{{ titulo }}</h3>


        <div class="row">
            <div class="col-lg-3">
                <div class="form-group">
                    <label>Dia da Semana</label>
                    <select v-model="dia" class="form-control" id="dia_semana">
                        <option v-for="(diaSemana, index) in diasSemana" :value="diaSemana.id">{{  diaSemana.dia_semana }}</option>
                    </select>
                    <small class="form-text text-muted">Informe o dia da semana</small>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="form-group">
                    <label for="entrada">Entrada</label>
                    <input type="text" class="form-control" id="entrada" v-model="entrada" v-mask="'##:##'" @change="validaHorario(entrada)">
                    <small class="form-text text-muted">Informe o horário de entrada</small>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="form-group">
                    <label for="entrada">Saída</label>
                    <input type="text" class="form-control" id="saida" v-model="saida" v-mask="'##:##'" @change="validaHorario(saida)">
                    <small class="form-text text-muted">Informe o horário de saída</small>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="form-group form-check">
                    <a href="javascript:void(0);" class="btn btn-default" @click="adicionarDiaSemana($event)">Adicionar</a>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">
                <div class="tabela-container row">
                    <table class="table">
                          <thead>
                            <tr>
                              <th scope="col">Dia</th>
                              <th scope="col">Entrada</th>
                              <th scope="col">Saída</th>
                              <th scope="col">Excluir</th>
                            </tr>
                          </thead>
                          <tbody v-if="expedienteSemana">
                            <tr v-for="(exped, index) in expedienteSemana">
                                <td>{{ exped.nome }}</td>
                                <td>{{ exped.horario_entrada }}</td>
                                <td>{{ exped.horario_saida }}</td>
                                <td scope="row">
                                    <a href="javascript:void(0);" class="btn btn-default" @click="excluir(exped.dia_semana_id)">Excluir</a>
                                </td>
                            </tr>
                          </tbody>

                          <tbody v-else>
                            <tr v-for="(exped, index) in expedienteProp">
                                <td>{{ exped.horario_entrada }}</td>
                                <td>{{ exped.horario_saida }}</td>
                                <td scope="row">
                                    <a href="javascript:void(0);" class="btn btn-default" @click="excluir(exped.dia_semana_id)">Excluir</a>
                                </td>
                            </tr>
                          </tbody>
                    </table>
                </div>
            </div>
        </div>
        
    </div>
</template>

<script>

	import { http } from '../../config';

    
    export default {

        props: ['expedienteProp'],


        created() {
            this.getDiasSemana();
        },


        data() {
        	return {
        		titulo: 'Expediente',
                diasSemana: null,
                expedienteSemana: [],
        		expediente: 0,
                dia: null,
                entrada: null,
                saida: null,
        		route: 'dias-semana',
                routeDependencias: 'funcionario-novo',

        	}
        },


        methods: {
            getDiasSemana: async function() {
                const response = await http.get(this.routeDependencias);
                this.diasSemana = response.data.dias;
            },

            adicionarDiaSemana: function () {

                const diaNome = document.getElementById('dia_semana');

                const diaSemana = {
                    dia_semana_id: this.dia,
                    nome: diaNome.options[diaNome.selectedIndex].text,
                    horario_entrada: this.entrada,
                    horario_saida: this.saida
                }


                this.expedienteSemana.push(diaSemana);


                this.dia = '';
                this.entrada = '';
                this.saida = '';

                this.eventEmit();
            },

            excluir: function (id) {            
                this.expedienteSemana = this.expedienteSemana.filter(item => item.dia_semana_id !== id)
                this.eventEmit();  
            },

            eventEmit: function() {
                this.$emit('dias-expediente', {
                    diasSemanaExped: this.expedienteSemana
                })
            },

            validaExpediente: function (valor, campo) {

                if(valor === null || valor === '') {
                    alert('Informe corretamente o valor de ' + campo);
                    return false;
                }
            },


            validaHorario: function (value) {
                var isValid = /^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$/.test(value);

                if (isValid) {
                    return true;
                } else {
                    this.entrada = '';
                    this.saida = '';
                    alert('Informe corretamente o horário');
                    return false;
                }
            }
        }

        

    };
</script>
