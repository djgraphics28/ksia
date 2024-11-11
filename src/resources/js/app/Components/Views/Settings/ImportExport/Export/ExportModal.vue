<template>
    <app-modal :modal-id="modalId" modal-size="large" modalAlignment="top" @close-modal="closeAddEditModal">
        <slot name="header">
            <div class="modal-header">
                <h4 class="modal-title">{{ title }}</h4>
                <button type="button" class="close outline-none" aria-label="Close" data-dismiss="modal" @click="closeAddEditModal">
                    <span>
                        <app-icon name="x"></app-icon>
                    </span>
                </button>
            </div>
        </slot>
        <div :class="`modal-body custom-scrollbar`">
            <slot></slot>
        </div>
    </app-modal>
</template>

<script>
export default {
    props: ['modalId'],
    data() {
        return {
            title: this.$t('export')
        }
    },
    methods: {
        closeAddEditModal() {
            $(`#${this.modalId}`).modal('hide');
            this.$emit('close-modal')
        }
    },
    mounted() {
        $(`#${this.modalId}`).modal('show')
    }
}
</script>