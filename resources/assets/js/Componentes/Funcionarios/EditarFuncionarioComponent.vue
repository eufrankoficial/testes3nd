<template>	
	<section class="container-app funcionario">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h1 class="title">{{ titulo + ' - ' + nome  }}</h1>
            </div>    
        </div>
		
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">

                <div class="button">
                    <router-link to="/funcionarios">Lista de funcionário</router-link>    
                </div>
                

                <div class="form-container row">
                    <form>
                        <div class="form-group">
                            <label for="nomeFuncionario">Nome</label>
                            <input type="text" class="form-control" id="nomeFuncionario" v-model="nome">
                            <small id="emailHelp" class="form-text text-muted">Informe o nome do funcionário</small>
                        </div>

                        <form-expediente-component :expedienteProp="this.expediente"></form-expediente-component>
                        
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

    	created() {
            this.getFuncionario(this.$route.params.slug);
        },

        components: {
            FormExpedienteComponent
        },

        data() {
        	return {
        		titulo: 'Editar',
        		nome: null,
        		expediente: 0,
        		slug: null,
                expediente: null,
        		route: 'funcionario-view',
        		updateRoute: 'funcionario-editar'

        	}
        },

        methods: {
        	getFuncionario: async function(slug) {
        		const response = await http.get(this.route + '/' + slug);
        		if(!response) {
        			alert('Não encontrado');
        			return false;
        		}

        		this.nome = response.data.nome;
        		this.slug = response.data.slug;
                this.expediente = response.data.expediente;
        	},

        	salvar: async function(event) {
        		event.preventDefault();


        		if(this.nome !== null && this.nome !== '') {
        			const data = {
        				nome: this.nome
        			};

	                const response = await http.post(this.updateRoute + '/' + this.slug, data).then(response => {
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
