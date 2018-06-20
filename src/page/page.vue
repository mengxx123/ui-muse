<template>
    <div class="ui-page ui-page-common">
        <!--:style="{'left': offset}" -->
        <header class="ui-page-header" v-if="!embed && headerVisible">
            <ui-appbar :title="title" :style="appbarStyle">
                <ui-icon-button icon="arrow_back_ios" slot="left" @click="$router.go(-1)" v-if="backable" />
                <ui-icon-button icon="menu" slot="left" @click="toggleDrawer()" v-if="!backable" tooltip="主菜单"/>
                <div slot="right">
                    <!--<slot name="header_right"></slot>-->
                </div>

                <div class="ui-page-action-item" v-for="item in page.menu" :key="item.id" v-if="page.menu" slot="right">
                    <ui-raised-button :label="item.text" slot="right"
                                      @click.native="item.click || itemClick"
                                      :to="item.to"
                                      :href="item.href"
                                      :target="item.target"
                                      v-if="item.type === 'button' && item.visible !== false"/>
                    <ui-flat-button :label="item.text" slot="right"
                                    @click="itemClick(item)"
                                    :to="item.to"
                                    :href="item.href"
                                    :target="item.target"
                                    v-if="item.type === 'text' && item.visible !== false"/>
                    <ui-icon-button :icon="item.icon"
                                    :to="item.to"
                                    :href="item.href"
                                    @click="itemClick(item)"
                                    :target="item.target"
                                    :tooltip="item.title"
                                    v-if="item.type === 'icon' && item.visible !== false"/>
                </div>
                <!--<ui-icon-menu icon="more_vert" slot="right" v-if="page.more" title="更多">-->
                <!--<ui-menu-item :title="item.title"-->
                <!--@click="itemClick(item)"-->
                <!--:to="item.to"-->
                <!--:href="item.href"-->
                <!--:target="item.target"-->
                <!--v-for="item in page.more"-->
                <!--:key="item.id"-->
                <!--:leftIcon="item.icon"-->
                <!--v-if="item.visible !== false" />-->
                <!--</ui-icon-menu>-->
            </ui-appbar>
        </header>
        <div class="ui-page-body" :style="pageBodyStyle">
            <div class="ui-page-side" :style="{'left': (offset - 256) + 'px'}">
                <slot name="drawer"></slot>
            </div>
            <main class="ui-page-content" :style="{'left': offset + 'px'}">
                <div :class="{'ui-page-container': containerPadding}" :style="containerStyle">
                    {{ drawerType }}
                    {{ drawerVisible }}
                    {{ isPc }}
                    embed:{{ embed }}
                    <slot></slot>
                </div>
            </main>
            <footer class="ui-page-footer">
                <slot name="footer"></slot>
            </footer>
        </div>
        <ui-drawer class="ui-page-drawer" v-if="!isPc && drawerType === 'float'" :open="drawerVisible" :docked="false" @close="toggleDrawer()" slot="drawer">
            <slot name="drawer"></slot>
        </ui-drawer>
    </div>
</template>

<script>
    const localStorage = window.localStorage // TODO 使用 yunser-storage

    // TODO add menu item enabled attribute
    export default {
        name: 'ui-page',
        data() {
            return {
                embed: false,
                drawerVisible: false,
                isPc: true,
                drawerType: 'inset'
            }
        },
        props: {
            title: {
                type: String,
                default: ''
            },
            name: {
                type: String,
                default: 'default'
            },
            containerMaxWidth: {
                type: Number,
                default: -1
            },
            page: {
                type: Object,
                default: function () {
                    return {
                        title: '云设'
                    }
                }
            },
            backable: {
                type: Boolean,
                default: false
            },
            containerPadding: {
                type: Boolean,
                default: true
            },
            appbarColor: {
                type: String,
                default: 'auto'
            },
            headerVisible: {
                type: Boolean,
                default: true
            },
            drawerDefaultVisible: {
                type: Boolean,
                default: true
            }
        },
        computed: {
            pageBodyStyle() {
                if (!this.embed && this.headerVisible) {
                    return {}
                }
                return {
                    top: 0
                }
            },
            containerStyle() {
                if (this.containerMaxWidth === -1) {
                    return {}
                }
                return {
                    'max-width': this.containerMaxWidth + 'px'
                }
            },
            offset() {
                if (!this.isPc) {
                    return 0
                }
                return this.drawerVisible ? '256' : 0
            },
            appbarStyle() {
                if (this.appbarColor === 'auto') {
                    return {}
                }
                return {
                    'background-color': this.appbarColor
                }
            }
        },
        mounted() {
            // let isInFrame = window.frames.length !== window.parent.frames.length
            let isInFrame = window.self !== window.top
            this.embed = this.$route.query.embed === 'true' && isInFrame || this.$route.query.embed === 'force'
            console.log('embed', this.embed)
            document.title = this.title || this.page.title
            this.isPc = window.innerWidth > 1000
            this.drawerType = window.innerWidth > 1000 ? 'inset' : 'float'
            if (!this.isPc) {
                this.drawerVisible = false
            } else {
                let drawerVisible = localStorage.getItem('drawerVisible')
                if (drawerVisible === '0') {
                    this.drawerVisible = false
                } else {
                    this.drawerVisible = this.drawerDefaultVisible
                }
            }
            if (this.embed) {
               this.drawerVisible = false
            }
            this.lintener = window.addEventListener('resize', () => {
                if (this.embed) {
                    return
                }
//                console.log(window.innerWidth)
                if (window.innerWidth < 1000) {
                    this.isPc = false
                    this.drawerVisible = false
                    this.drawerType = 'float'
                } else {
                    this.drawerType = 'inset'
                    this.isPc = true
//                    this.drawerVisible = true
                    let drawerVisible = localStorage.getItem('drawerVisible')
                    if (drawerVisible === '0') {
                        this.drawerVisible = false
                    } else {
                        this.drawerVisible = true
                    }
                }
            })
        },
        destroyed() {
            window.removeEventListener('resize', this.lintener)
        },
        methods: {
            itemClick(item) {
                item.click && item.click()
            },
            toggleDrawer() {
                if (this.embed) {
                    return
                }
                if (this.drawerVisible) {
                    localStorage.setItem('drawerVisible', '0')
                } else {
                    localStorage.setItem('drawerVisible', '1')
                }
                this.drawerVisible = !this.drawerVisible
                this.docked = !this.isPc
            },
            hideDrawer() {
                this.drawerVisible = false
            },
            hideDrawerIfMobile() {
                if (!this.isPc) {
                    this.drawerVisible = false
                }
            }
        }
    }
</script>
