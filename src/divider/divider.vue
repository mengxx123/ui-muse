<template>
    <hr class="ui-divider" :class="{'inset': inset, 'shallow-inset': shallowInset}"/>
</template>

<script>
    export default {
        name: 'ui-divider',
        props: {
            inset: {
                type: Boolean,
                default: false
            },
            shallowInset: {
                type: Boolean,
                default: false
            }
        }
    }
</script>
