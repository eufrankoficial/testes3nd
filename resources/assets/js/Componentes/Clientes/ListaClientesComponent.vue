<template>	
	<section class="container-app funcionario">

		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h1 class="title">Clientes</h1>
			</div>	
		</div>
			
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">

				<div class="tabela-container row">
					<table class="table">
						  <thead>
						    <tr>
						      <th scope="col">Nome</th>
						      <th scope="col">Entrada</th>
						      <th scope="col">Saída</th>
						      <th scope="col">Tempo na loja na loja</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr v-for="cliente in clientes ">
						      <td>{{ cliente.nome }}</td>
						      <th scope="row">{{ cliente.entrada }}</th>
						      <th scope="row">{{ cliente.saida }}</th>
						      <th scope="row" v-if="cliente.minutos !== 0">{{ cliente.minutos }} minutos</th>
						      <th scope="row" v-else="cliente.segundos !== 0">{{ cliente.segundos }} segundos</th>
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

    export default {

    	created() {
	        this.getClientes();
	    },

        data() {
        	return {
        		titulo: 'Sua loja virtual favorita',
        		clientes: null,
        		route: 'listar-clientes'
        	}
        },

        methods: {
        	getClientes: async function() {
	    		const response = await http.get(this.route);
	    		
	            if(response.data) {
	            	this.clientes = response.data.dados;
	            	console.log(this.clientes);
	            }

    		}
        }

    };
</script>
