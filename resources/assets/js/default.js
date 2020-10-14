import VueSweetalert2 from 'vue-sweetalert2';
import VueMask from 'v-mask';

import TopoComponent from './Componentes/Elementos/TopoComponent.vue';
import MenuComponent from './Componentes/Elementos/MenuComponent.vue';
import ListaProdutosComponent from './Componentes/Produtos/ListaProdutosComponent.vue';


import router from './routes';
import { http } from './config';

Vue.use(VueSweetalert2);
Vue.use(VueMask);

const app = new Vue({
    created() {
    	window.addEventListener('beforeunload', this.aoFecharTab)
    },

    components: {
        TopoComponent,
        MenuComponent,
        ListaProdutosComponent
    },
    
    router,
    
    data: {
        title: 'Atendimento Teste'
    },
    
    methods: {
    	aoFecharTab: async function(event) {
    		event.preventDefault();
    		const response = await http.get('registrar-saida-cliente');
    		console.log(response.data);
    	}
    }
}).$mount('#app')
