<template xmlns="http://www.w3.org/1999/html">
    <div class="card border-0 card-body" style="background-color: var(--base-color);">
        <div v-if="row">
            <div class="d-flex justify-content-between align-items-start">
                <div>
                    <div class="d-flex align-items-center">
                        <app-avatar :img="row.created_by?.profile_picture?.full_url" avatarClass="avatars-w-40" />
                        <h5 class="ml-2">{{ row.created_by?.full_name }}</h5>
                    </div>
                    <div class="mt-2">
                        <span :class="`badge badge-sm badge-pill badge-${row.status?.class} text-capitalize`">{{
                            row.status?.translated_name }}</span>
                    </div>
                    <div class="d-flex align-items-center mt-2">
                        <app-icon class="text-muted" name="calendar"></app-icon>
                        <span>{{ formatDateToLocal(row.requested_on, true) }}</span>
                    </div>
                </div>
                <div>
                    <div>{{ $t('modules') }}</div>
                    <div v-for="(step, index) in row.requested_modules" :key="`step-${index}`"
                        class="d-flex align-items-center">
                        <div v-if="row.completed_modules.includes(step)">
                            <app-icon class="text-success" name="check-circle"></app-icon>
                        </div>
                        <template v-else>
                            <div v-if="row.status?.name === 'status_rejected'">
                                <app-icon class="text-danger" name="x-circle"></app-icon>
                            </div>
                            <div v-else role="status" class="spinner-border width-12 height-12 ml-2"><span
                                    class="sr-only"></span></div>
                        </template>
                        <span class="ml-2">{{ $t('modules_' + step) }}</span>
                    </div>
                </div>
                <div class="d-flex flex-column align-items-end" style="gap: 5px;">
                    <div class="progress width-300"
                         style="height: 20px; background-color: var(--kanban-scrollbar-track);">
                        <div class="progress-bar progress-bar-striped --progress-bar-animated text-dark bg-secondary"
                             :class="[
                                row.status?.name !== 'status_rejected' ? 'bg-success' : 'bg-danger' ,
                                row.status?.name === 'status_processing' ? 'progress-bar-animated' : ''
                                ]"
                             :style="`width:${row.progress}%;height:20px`">
                            <div class="ml-2" :class="row.status?.name === 'status_pending' ? 'text-dark' : 'text-light'">{{ row.progress }}% completed</div>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mt-2 " style="gap: 5px;">
                        <div class="btn-group btn-group-action"
                             role="group"
                             aria-label="Default action">
                            <button v-if="(['status_completed', 'status_rejected'].includes(row?.status?.name))" type="button" class="btn btn-link" @click="isOpenDeleteConfirmation = true">
                                <app-icon name="trash-2"/>
                            </button>
                        </div>
                        <button v-if="row.status?.name === 'status_rejected'" @click="isOpenRetryConfirmation = true" class="btn btn-sm btn-danger px-2 py-1"><app-icon name="rotate-ccw" /> {{ $t('retry') }}</button>
                        <button v-if="row.status?.name === 'status_completed'" @click="download" class="btn btn-sm btn-primary px-2 py-1"><app-icon name="download" />{{ $t('_download') }}</button>
                    </div>
                    <small class="text-danger  width-300">{{ row.data.message }}</small>
                </div>
            </div>
            <div></div>
        </div>
        <app-confirmation-modal
            icon="trash-2"
            modal-class="danger"
            v-if="isOpenDeleteConfirmation"
            modal-id="app-delete-confirmation-modal"
            @confirmed="confirmDeleted"
            @cancelled="isOpenDeleteConfirmation = false"
        />
        <app-confirmation-modal
            icon="info"
            modal-class="danger"
            :message="$t('are_you_want_to_re_request')"
            v-if="isOpenRetryConfirmation"
            modal-id="app-retry-confirmation-modal"
            @confirmed="confirmRetry"
            @cancelled="isOpenRetryConfirmation = false"
        />
    </div>
</template>

<script>

import {EXPORT_MODULES} from "../../../../../Config/ApiUrl";
import {axiosGet, axiosPost, axiosDelete, urlGenerator} from "../../../../../Helpers/AxiosHelper";
import {formatDateToLocal} from "../../../../../Helpers/Helpers";

export default {
    props: ['row-data', 'index'],
    data() {
        return {
            formatDateToLocal,
            row: null,
            isOpenDeleteConfirmation: false,
            isOpenRetryConfirmation: false,
        }
    },
    methods: {
        getRowData() {
            axiosGet(`${EXPORT_MODULES}/${this.rowData.id}`).then(res => {
                this.row = res.data
                if (!(['status_completed', 'status_rejected'].includes(res.data?.status?.name))) {
                    setTimeout(() => this.getRowData(), 10000)
                }
            }).finally(() => { })
        },
        confirmDeleted(){
            axiosDelete(`${EXPORT_MODULES}/${this.rowData.id}`).then(res => {
                this.$hub.$emit('reload-export-table');
                this.$toastr.s(res.data.message);
            })
        },
        confirmRetry(){
            axiosPost(`${EXPORT_MODULES}/${this.rowData.id}/retry`).then(res => {
                this.getRowData()
            })
        },
        download(){
            window.open(urlGenerator(`${EXPORT_MODULES}/${this.rowData.id}/download-file`), '_blank')
        }
    },
    mounted() {
        this.row = this.rowData
        if (!(['status_completed', 'status_rejected'].includes(this.rowData?.status?.name))) {
            setTimeout(() => this.getRowData(), 1000)
        }
    }
}
</script>

<style scoped></style>