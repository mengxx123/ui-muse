<template>
    <transition name="ui-message-fade">
        <div v-if="show" :class="[
            'ui-message',
            type? `ui-message-${ type }` : '']">
            <i class="mu-icon material-icons" v-if="type === 'success'">check_circle</i>
            <i class="mu-icon material-icons" v-if="type === 'danger'">cancel</i>
            <i class="mu-icon material-icons" v-if="type === 'warning' || type === 'info'">info</i>
            <span class="ui-message-context">{{text}}</span>
        </div>
    </transition>
</template>

<script type="text/babel">
/* eslint-disable */

const typeMap = {
    success: "success",
    info: "info",
    warning: "warning",
    error: "error"
};
export default {
    data() {
        return {
        show: false,
        text: "",
        type: ""
        };
    },
    computed: {
        iconClass() {
        return this.type ? `ui-message-icon ui-icon-${typeMap[this.type]}` : "";
        }
    }
};
</script>
