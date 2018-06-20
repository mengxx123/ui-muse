<template>
    <div class="ui-badge-container">
        <slot></slot>
        <em class="ui-badge" :style="badgeStyle" :class="badgeInternalClass">
            <slot name="content">
                {{content}}
            </slot>
        </em>
    </div>
</template>

<script>
    import {getColor, convertClass} from '../utils'
    export default {
        name: 'ui-badge',
        props: {
            content: {
                type: String,
                default: ''
            },
            color: {
                type: String,
                default: ''
            },
            primary: {
                type: Boolean,
                default: false
            },
            secondary: {
                type: Boolean,
                default: false
            },
            circle: {
                type: Boolean,
                default: false
            },
            badgeClass: {
                type: [String, Object, Array]
            }
        },
        computed: {
            badgeStyle () {
                return {
                    'background-color': getColor(this.color)
                }
            },
            badgeInternalClass () {
                const {circle, primary, secondary, badgeClass} = this
                const isFloat = this.$slots && this.$slots.default && this.$slots.default.length > 0
                const classNames = []
                if (circle) classNames.push('ui-badge-circle')
                if (primary) classNames.push('ui-badge-primary')
                if (secondary) classNames.push('ui-badge-secondary')
                if (isFloat) classNames.push('ui-badge-float')
                return classNames.concat(convertClass(badgeClass))
            }
        }
    }
</script>
