<template>
    <div class="ui-paper" :class="paperClass">
        <slot></slot>
    </div>
</template>

<script>
    export default {
        name: 'ui-paper',
        props: {
            circle: {
                type: Boolean,
                default: false
            },
            rounded: {
                type: Boolean,
                default: true
            },
            zDepth: {
                type: Number,
                default: 1
            }
        },
        computed: {
            paperClass () {
                var arr = []
                if (this.circle) arr.push('ui-paper-circle')
                if (this.rounded) arr.push('ui-paper-round')
                arr.push('ui-paper-' + this.zDepth)
                return arr
            }
        }
    }
</script>
