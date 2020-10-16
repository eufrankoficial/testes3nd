<template>	
	<section class="container-app funcionario">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h1 class="title">{{ titulo }}</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">

				<div class="button add">
					<span class="button-add">
						<router-link to="/funcionarios">Listagem</router-link>
					</span>
				</div>

				<div class="row">
					<form class="form-container">
						<div class="form-group">
							<label for="nomeFuncionario">Nome</label>
							<input type="text" class="form-control" id="nomeFuncionario" v-model="nome">
							<small id="emailHelp" class="form-text text-muted">Informe o nome do funcionário</small>
						</div>


						<form-expediente-component v-on:dias-expediente="diasSemanaExped"></form-expediente-component>
						
						<button type="submit" class="btn btn-primary" @click="salvar($event)">Salvar</button>
					</form>
				</div>
			</div>
		</div>
	</section>
</template>

<script>

	import { http } from '../../config';
	import FormExpedienteComponent from './FormExpedienteComponent.vue';

    export default {

		components: {
            FormExpedienteComponent
        },

        data() {
        	return {
        		titulo: 'Adicionar funcionário',
        		nome: null,
        		expediente: 0,
        		routeStore: 'funcionario-adicionar',
        		expediente: null,

        	}
        },

        methods: {
        	diasSemanaExped: function(diasSemanaExped) {
        		this.expediente = diasSemanaExped;
        	},

        	salvar: async function(event) {
        		event.preventDefault();


        		if(this.nome !== null && this.nome !== '') {
        			const data = {
        				nome: this.nome,
        				expediente: this.expediente
        			};

	                const response = await http.post(this.routeStore, data).then(response => {
	                    if(response.data.status) {
	                    	alert('Salvo com sucesso!');

	                        return true;
	                    }
	                }).catch(error => {
	                    console.log(error);
	                    alert('Não foi possível salvar!');
	                    return false;
	                });
        		} else {
        			alert('Informe o nome do funcionário');
        			return false;
        		}
        	}
        }

    };
</script>
