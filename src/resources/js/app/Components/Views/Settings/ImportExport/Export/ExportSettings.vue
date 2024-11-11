<template>
    <div>
        <app-table id="export-table" :options="options" />
        <export-modal :modal-id="exportModalId" v-if="isConfirmationModalActive" @close-modal="closeModal">
            <form class="mb-0" ref="form" enctype="multipart/form-data">
                <div>
                    <div class="col-md-12">
                        <app-note
                            :title="$t('remember')"
                            padding-class="p-2 mb-2"
                            content-type="html"
                            :notes="`<ol>
                                     <li>${$t('no_delivery_settings_warning', {
                                            location: `<a href='${urlGenerator('/app-setting?tab=Email%20Setup')}'>${$t('here')}</a>`
                                        })}
                                     </li>
                                     <li>${$t('csv_export_guide1')}
                                     </li>
                                </ol>`"
                        />
                    </div>

                    <div class="my-primary">
                        <label for="fields">{{ $t('select_module') }}</label>
                        <div class="d-flex flex-column g-1">
                            <app-input v-model="formData.all" type="checkbox"
                                :list="[{ id: 'all_data', value: $t('all_data') }]" radioCheckboxWrapper="d-flex g-1"
                                @changed="allChange" class="mt-3"/>
                                <hr>
                            <app-input v-model="formData.fields" type="checkbox" :list="list"
                                radioCheckboxWrapper="custom-input-wrapper" @input="inputListValue" class="mt-3"/>
                        </div>
                    </div>
                </div>
            </form>
            <!-- <div class="text-center big-icon mt-primary" :key="iconKey">
                    <app-icon :name="'download'" class="text-primary" />
                </div>
                <h5 class="text-center font-weight-bold mt-4">{{ $t('are_you_sure') }}</h5>
                <p class="mb-primary text-center font-size-90 p-0"> {{ $t('are_you_sure_you_want_to_download_data') }}</p> -->
                <div class="note note-warning d-inline-block p-3 mb-primary">
                    <div class="d-flex --justify-content-center gap-2">
                        <div class="d-flex align-items-center">
                            <span class="d-flex px-3 py-2 form-control">{{ equation.field1 }}</span>
                            <span class="d-flex px-3 py-2 --form-control">+</span>
                            <span class="d-flex px-3 py-2 form-control">{{ equation.field2 }}</span>
                        </div>
                        <span class="d-flex px-3 py-2">=</span>
                        <input type="text" class="form-control" v-model="equation.result" :placeholder="$t('answer')"
                            style="width: 80px;">
                    </div>
                </div>
            <div>
                <button class="btn btn-secondary mr-2" data-dismiss="modal" @click.prevent="closeModal">{{
            $t('no') }}</button>
                <button class="btn btn-primary" @click.prevent="confirm"
                    :disabled="preloader || !([...formData.all, ...formData.fields].length) || ((equation.field1 + equation.field2)?.toString() !== equation.result?.toString())">{{
            $t('export') }} </button>
            </div>
        </export-modal>
    </div>
</template>

<script>
import ExportModal from "./ExportModal.vue";
import {FormMixin} from "../../../../../../core/mixins/form/FormMixin";
import {axiosPost} from "../../../../../Helpers/AxiosHelper";
import {EXPORT_MODULES} from "../../../../../Config/ApiUrl";
import {localTimeZone} from "../../../../../Helpers/DateTimeHelper";
import {urlGenerator} from "../../../../../Helpers/AxiosHelper";

export default {
    mixins: [FormMixin],
    components: { ExportModal },
    data() {
        return {
            urlGenerator,
            options: {
                name: 'exports',
                url: EXPORT_MODULES,
                columns: [
                    {
                        title: this.$t('users'),
                        type: 'component',
                        key: 'progress',
                        isVisible: true,
                        componentName: 'app-export-item-component',
                    }
                ],
                datatableWrapper: false,
                showHeader: false,
                tableShadow: false,
                showSearch: false,
                showFilter: false,
                paginationType: "loadMore",
                responsive: true,
                rowLimit: 5,
                showAction: true,
                actionType: "default",
                actions: [],
                // afterRequestSuccess: ({data}) => {}
            },
            preloader: false,
            exportModalId: 'export-modal',
            list: [
                { id: 'candidates', value: this.$t('modules_candidates') },
                { id: 'job_posts', value: this.$t('modules_job_posts') },
                { id: 'job_post_apply_form', value: this.$t('modules_job_post_apply_form') },
                { id: 'job_applications', value: this.$t('modules_job_applications') },
                { id: 'job_applicant_form', value: this.$t('modules_job_applicant_form') },
                { id: 'notes', value: this.$t('modules_notes') },
                { id: 'events', value: this.$t('modules_events') },
                { id: 'email_conversation', value: this.$t('modules_email_conversation') },
                { id: 'todo', value: this.$t('modules_todo') },
                { id: 'admin_user', value: this.$t('modules_admin_user') },
                // { id: 'activity_log', value: this.$t('modules_activity_log') },
            ],
            formData: {
                fields: [],
                all: [
                    // 'all_data'
                ]
            },
            equation: { field1: this.randomValue(1, 10), field2: this.randomValue(1, 10) },
            isConfirmationModalActive: false,
            errorMessage: '',
            stage: 'init',
            iconKey: 0,
            title: this.$t('are_you_sure'),
            exportModules:[
                'candidates',
                'job_posts',
                'job_post_apply_form',
                'job_applications',
                'job_applicant_form',
                'notes',
                'events',
                'email_conversation',
                'todo',
                'admin_user',
                // 'activity_log',
            ]
        }
    },
    methods: {
        randomValue(min, max) {
            return Math.round(Math.random() * (max - min) + min);
        },
        allChange(e) {
            if (e.target.checked) {
                this.formData.fields = this.list.map(i => i.id)
            } else {
                this.formData.fields = []
            }
        },
        inputListValue(e) {
            let allList = !!(!this.list.map(i => i.id).filter(i => !e.includes(i)).length)
            if (allList) {
                this.formData.all = ['all_data']
            } else {
                this.formData.all = []
            }
        },
        exportHandler() {
            this.isConfirmationModalActive = true
            this.equation = { field1: this.randomValue(1, 10), field2: this.randomValue(1, 10) }
        },
        confirm() {
            this.preloader = true;
            this.stage = 'process'
            this.iconKey++
            axiosPost(EXPORT_MODULES + '?timeZone=' + localTimeZone, { fields: [...this.formData.all, ...this.formData.fields] }).then(({ data }) => {
                this.$toastr.s(data.message);
                this.closeModal()
                this.formData.all = []
            }).catch(({ response }) => {
                console.log('err', response)
                this.errorMessage = response.data.message;
                this.iconKey++;
                this.closeModal()
            }).finally(() => {
                this.reloadTable()
                this.preloader = false;
            })
        },
        closeModal() {
            $(`#${this.exportModalId}`).modal('hide');
            this.isConfirmationModalActive = false
            this.equation = {}
            this.stage = 'init'
            this.resetCheckbox()
        },
        reloadTable(){
            this.$hub.$emit('reload-export-table');
        },
        resetCheckbox(){
            this.formData.fields = []
        }
    },
    mounted() {
        this.$hub.$on('open-export-modal', () => {
            this.exportHandler()
            this.isConfirmationModalActive = true
        })
    },
};
</script>

<style>
.custom-input-wrapper {
    display: grid;
    grid-template-columns: auto auto auto;
    gap: 10px;
}
</style>
