<template>
    <abstract-button @KeyboardFocus="handleKeyboardFocus"
                     @hover="handleHover" @hoverExit="handleHoverExit" @click="handleClick"
                     :type="type" :href="href" :target="target" :style="buttonStyle"
                     :to="to" :tag="tag" :activeClass="activeClass" :event="event" :exact="exact" :append="append"
                     :replace="replace"
                     class="ui-raised-button" :rippleColor="rippleColor" :rippleOpacity="rippleOpacity"
                     :disabled="disabled" :keyboardFocused="keyboardFocused"
                     :class="buttonClass" wrapperClass="ui-raised-button-wrapper" :centerRipple="false">
        <span class="ui-raised-button-label" :class="labelClass"
              v-if="label && labelPosition === 'before'">{{label}}</span>
        <icon :value="icon" :class="iconClass"></icon>
        <slot></slot>
        <span class="ui-raised-button-label" :class="labelClass"
              v-if="label && labelPosition === 'after'">{{label}}</span>
    </abstract-button>
</template>

<script>
    import abstractButton from '../internal/abstractButton'
    import routerMixin from '../internal/routerMixin'
    import {getColor} from '../utils'
    import icon from '../icon'
    export default {
        name: 'ui-raised-button',
        mixins: [routerMixin],
        props: {
            icon: {
                type: String
            },
            iconClass: {
                type: [String, Array, Object]
            },
            label: {
                type: String
            },
            labelPosition: {
                type: String,
                default: 'after'
            },
            labelClass: {
                type: [String, Array, Object],
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
            disabled: {
                type: Boolean,
                default: false
            },
            keyboardFocused: {
                type: Boolean,
                default: false
            },
            fullWidth: {
                type: Boolean,
                default: false
            },
            type: {
                type: String
            },
            href: {
                type: String,
                default: ''
            },
            target: {
                type: String
            },
            backgroundColor: {
                type: String,
                default: ''
            },
            color: {
                type: String,
                default: ''
            },
            rippleColor: {
                type: String
            },
            rippleOpacity: {
                type: Number
            }
        },
        data () {
            return {
                focus: false
            }
        },
        computed: {
            buttonStyle () {
                return {
                    'background-color': getColor(this.backgroundColor),
                    'color': getColor(this.color)
                }
            },
            inverse () {
                return this.primary || this.secondary || this.backgroundColor
            },
            buttonClass () {
                return {
                    'ui-raised-button-primary': this.primary,
                    'ui-raised-button-secondary': this.secondary,
                    'label-before': this.labelPosition === 'before',
                    'ui-raised-button-inverse': this.inverse,
                    'ui-raised-button-full': this.fullWidth,
                    'focus': this.focus,
                    'no-label': !this.label
                }
            }
        },
        methods: {
            handleClick (e) {
                this.$emit('click', e)
            },
            handleKeyboardFocus (isFocus) {
                this.focus = isFocus
                this.$emit('keyboardFocus', isFocus)
                this.$emit('keyboard-focus', isFocus)
            },
            handleHover (e) {
                this.$emit('hover', e)
            },
            handleHoverExit (e) {
                this.$emit('hoverExit', e)
                this.$emit('hover-exit', e)
            }
        },
        components: {
            'abstract-button': abstractButton,
            icon
        }
    }
</script>
