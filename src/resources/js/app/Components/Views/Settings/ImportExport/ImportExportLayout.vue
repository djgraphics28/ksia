<template>
    <div class="content-wrapper">
        <app-breadcrumb :page-title="$t('exports')" :icon="pageIcon"/>
        <app-tab :tabs="tabs" :icon="pageIcon"/>
    </div>
</template>

<script>
export default {
    data() {
        return {
            pageIcon: 'settings',
            tabs: [
                {
                    name: this.$t('export'),
                    title: this.$t('export'),
                    component: "app-export",
                    headerButton: {
                        label: this.$t('make_an_export_request'),
                        method: () => {
                            this.$hub.$emit('open-export-modal')
                        }
                    },
                    permission: true,
                },
            ]
        }
    }
}
</script>

<style scoped></style>