<template>	
	<section class="container-app funcionario">

		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h1 class="title">Funcionarios</h1>
			</div>	
		</div>
			
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="button add">
					<span class="button-add">
						<router-link to="/funcionarios/adicionar">Adicionar</router-link>
					</span>
				</div>

				<div class="tabela-container row">
					<table class="table">
						  <thead>
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">Nome</th>
						      <th scope="col">Atualizado em</th>
						      <th scope="col">Ações</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr v-for="funcionario in funcionarios ">
						      <td>#{{ funcionario.id }}</td>
						      <td>{{ funcionario.nome }}</td>
						      <th scope="row">{{ funcionario.updated_at }}</th>
						      <td scope="row">
						      	<span class="button">
						      		<router-link :to="'/funcionarios/editar/' + funcionario.slug">Editar</router-link>
						      	</span>
						      	<span class="button">
						      		<excluir-component :url="routeDelete + '/' + funcionario.slug" :url-after-delete="route"></excluir-component>
						      	</span>
						      </td>
						    </tr>
						  </tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
</template>

<script>

    import { http } from '../../config';
    import ExcluirComponent from '../Excluir/ExcluirComponent.vue';

    export default {


    	created() {
            this.getFuncionarios();
        },

        components: {
        	ExcluirComponent
        },


        data() {
        	return {
        		titulo: 'Sua loja virtual favorita',
        		route: 'funcionario-listar',
        		funcionarios: null,
                routeDelete: 'funcionario-excluir'
        	}
        },

        methods: {
        	getFuncionarios: async function() {
        		
        		const response = await http.get(this.route);
        		
                if(response.data) {
                	this.funcionarios = response.data.dados.data;
                	console.log(this.funcionarios);
                } 
        	},
        }

    };
</script>
