<template>
    <div>
        <abstract-button class="ui-menu-item-wrapper" :class="{'active': active}"
                         :href="href" :target="target" ref="button" :centerRipple="false"
                         :to="to" :tag="tag" :activeClass="activeClass" :event="event" :exact="exact" :append="append"
                         :replace="replace"
                         :disableFocusRipple="disableFocusRipple" :disabled="disabled" containerElement="div"
                         @click="handleClick" @keyboardFocus="handleKeyboardFocus" @hover="handleHover"
                         @hoverExit="handleHoverExit">
            <div class="ui-menu-item" :class="{'have-left-icon': leftIcon || inset}">
                <icon :value="leftIcon" :style="{'color': filterColor(leftIconColor)}" class="ui-menu-item-left-icon"
                      :class="leftIconClass"/>
                <div class="ui-menu-item-title" :class="titleClass">
                    <slot name="title">
                        {{title}}
                    </slot>
                </div>
                <div v-if="!rightIcon">
                    <span v-if="showAfterText" :class="afterTextClass">{{afterText}}</span>
                    <slot name="after"></slot>
                </div>
                <icon :value="rightIcon" :style="{'color': filterColor(rightIconColor)}" class="ui-menu-item-right-icon"
                      :class="rightIconClass"/>
            </div>
        </abstract-button>
        <popover :open="openMenu" v-if="$slots && $slots.default && $slots.default.length > 0"
                 :anchorOrigin="{ vertical: 'top', horizontal: 'right'}"
                 @close="close" :trigger="trigger">
            <mu-menu v-if="openMenu" :desktop="$parent.desktop" popover
                     :class="nestedMenuClass" :listClass="nestedMenuListClass"
                     :maxHeight="$parent.maxHeight" :value="nestedMenuValue">
                <slot></slot>
            </mu-menu>
        </popover>
    </div>
</template>

<script>
    import abstractButton from '../internal/abstractButton'
    import routerMixin from '../internal/routerMixin'
    import icon from '../icon'
    import {getColor, isNotNull} from '../utils'
    import popover from '../popover'
    import menu from './menu'
    export default {
        name: 'ui-menu-item',
        mixins: [routerMixin],
        props: {
            href: {
                type: String
            },
            target: {
                type: String
            },
            title: {
                type: String
            },
            titleClass: {
                type: [String, Object, Array]
            },
            afterText: {
                type: String
            },
            afterTextClass: {
                type: [String, Object, Array]
            },
            disabled: {
                type: Boolean,
                default: false
            },
            disableFocusRipple: {
                type: Boolean,
                default: false
            },
            inset: {
                type: Boolean,
                default: false
            },
            leftIcon: {
                type: String
            },
            leftIconColor: {
                type: String
            },
            leftIconClass: {
                type: [String, Object, Array]
            },
            rightIcon: {
                type: String
            },
            rightIconColor: {
                type: String
            },
            rightIconClass: {
                type: [String, Object, Array]
            },
            nestedMenuClass: {
                type: [String, Object, Array]
            },
            nestedMenuListClass: {
                type: [String, Object, Array]
            },
            value: {},
            nestedMenuValue: {}
        },
        computed: {
            showAfterText () {
                return !this.rightIcon && this.afterText && (!this.$slot || !this.$slot.after || this.$slot.after.length === 0)
            },
            active () {
                return isNotNull(this.$parent.value) && isNotNull(this.value) && (this.$parent.value === this.value || (this.$parent.multiple && this.$parent.value.indexOf(this.value) !== -1))
            }
        },
        data () {
            this._isMenuItem = true
            return {
                openMenu: false,
                trigger: null,
                focusState: 'none' // 'none', 'focused', 'keyboard-focused'
            }
        },
        mounted () {
            this.trigger = this.$el
            this.applyFocusState()
        },
        methods: {
            handleClick (e) {
                this.$emit('click', e)
                this.$parent.handleClick(this)
                this.open()
                if (isNotNull(this.value)) this.$parent.handleChange(this.value)
            },
            filterColor (color) {
                return getColor(color)
            },
            open () {
                this.openMenu = this.$slots && this.$slots.default && this.$slots.default.length > 0
            },
            close () {
                this.openMenu = false
            },
            handleKeyboardFocus (isFocus) {
                this.$emit('keyboardFocus', isFocus)
                this.$emit('keyboard-focus', isFocus)
            },
            handleHover (event) {
                this.$emit('hover', event)
            },
            handleHoverExit (event) {
                this.$emit('hoverExit', event)
                this.$emit('hover-exit', event)
            },
            applyFocusState () {
                const button = this.$refs.button
                if (button) {
                    const buttonEl = button.$el

                    switch (this.focusState) {
                        case 'none':
                            buttonEl.blur()
                            break
                        case 'focused':
                            buttonEl.focus()
                            break
                        case 'keyboard-focused':
                            button.setKeyboardFocus()
                            buttonEl.focus()
                            break
                    }
                }
            }
        },
        watch: {
            focusState () {
                this.applyFocusState()
            }
        },
        components: {
            'abstract-button': abstractButton,
            icon,
            popover,
            'mu-menu': menu
        }
    }
</script>
