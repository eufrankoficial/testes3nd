import VueRouter from 'vue-router';

//Funcionários
import ListaFuncionariosComponent from '../Componentes/Funcionarios/ListaFuncionariosComponent.vue';
import AdicionarFuncionarioComponent from '../Componentes/Funcionarios/AdicionarFuncionarioComponent.vue';
import EditarFuncionarioComponent from '../Componentes/Funcionarios/EditarFuncionarioComponent.vue';



import ListaClientesComponent from '../Componentes/Clientes/ListaClientesComponent.vue';


const routes = [
  { path: '/funcionarios', component: ListaFuncionariosComponent },
  { path: '/funcionarios/adicionar', component: AdicionarFuncionarioComponent },
  { path: '/funcionarios/editar/:slug', component: EditarFuncionarioComponent },
  { path: '/clientes', component: ListaClientesComponent},
]


const router = new VueRouter({
  routes
});



export default router;
