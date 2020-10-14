<template>
    <a href="javascript:void(0)" class="btn btn-sm btn-default" data-type="confirm" @click="confirmaExclusao($event)">
        <i class="fa fa-trash text-white"></i> Excluir
    </a>
</template>

<script>

    import { http } from '../../config';

    export default {
        props: ['url', 'url-after-delete'],


        data() {
            return {};
        },


        methods: {

            excluir: async function() {
                await http.get(this.url);
            },


            confirmaExclusao: function (event) {
                event.preventDefault();

                this.$swal.fire({
                    title: 'Tem certeza?',
                    text: 'Essa ação não poderá ser desfeita.',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Excluir!',
                    cancelButtonText: 'Cancelar'
                }).then((result) => {
                    if (result.value) {
                        this.excluir();

                        this.$swal.fire(
                            'Excluído!',
                            'Excluído com sucesso',
                            'success'
                        );
                        
                        event.target.parentElement.parentElement.remove();

                        return true;

                    } else {
                        this.$swal.fire(
                            'Cancelado',
                            'Seu registro está a salvo',
                            'error'
                        );

                        return false;
                    }
                })
            }
        }

    };
</script>
