<template>
    <div class="ui-container":class="containerClass">
        <slot></slot>
    </div>
</template>

<script>
    export default {
        name: 'ui-container',
        props: {
            top: {
                type: Boolean,
                default: false
            }
        },
        computed: {
            containerClass () {
                const classNames = []
                if (this.top) {
                    classNames.push('ui-container-top')
                }
                return classNames
            }
        }
    }
</script>
