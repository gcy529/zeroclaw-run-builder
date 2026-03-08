'use strict';

export default {
    data() {
        return {
            config: {},
            loading: true,
            saving: false
        };
    },
    mounted() {
        this.loadConfig();
    },
    methods: {
        async loadConfig() {
            this.loading = true;
            try {
                const res = await L.api.call('luci.zeroclaw.getConfig');
                this.config = res || {};
            } catch (e) {
                console.error(e);
            }
            this.loading = false;
        },
        async saveConfig() {
            this.saving = true;
            try {
                await L.api.call('luci.zeroclaw.setConfig', this.config);
                L.ui.addNotification(null, _('Settings saved'), 'success');
            } catch (e) {
                L.ui.addNotification(null, _('Save failed: %s'.format(e.message)), 'danger');
            }
            this.saving = false;
        }
    }
};
