<template>
    <ui-page class="page-demo" title="这是标题" :page="page" :drawer-default-visible="false">
        <ui-appbar>
            <ui-icon-button icon="help" slot="right">
            </ui-icon-button>
            <ui-icon-button icon="close" slot="left" />
        </ui-appbar>
        <div slot="drawer">
            <ui-list>
                <ui-list-item title="Inbox">
                    <ui-icon slot="left" value="inbox"/>
                </ui-list-item>
            </ui-list>
        </div>
        <div class="ripple-box">
            <abstract-button class="asd"
                             rippleColor="#f00" :rippleOpacity="0.2"
                             wrapperClass="ui-asd-wrapper" :centerRipple="false">
                <div>1212</div>
                <div>1212</div>
                <div>1212</div>
                <div>1212</div>
            </abstract-button>
        </div>
        <h2>Badge</h2>
        <div>
            <ui-badge content="444" primary>
                <div slot="content">1212121212</div>
            </ui-badge>
            <span class="ui-badge ui-badge-primary">采购</span>
            <span class="ui-badge ui-badge-secondary">采购</span>
            <span class="ui-badge ui-badge-success">采购</span>
            <span class="ui-badge ui-badge-warning">采购</span>
            <span class="ui-badge ui-badge-danger">采购</span>
        </div>
        <div slot="header_right">1212</div>
        <h2>按钮</h2>
        <div>
            <button class="ui-raised-button ui-raised-button-primary ui-raised-button-inverse">Primary</button>
            <button class="ui-raised-button ui-raised-button-secondary ui-raised-button-inverse">Secondary</button>
            <button class="ui-raised-button ui-raised-button-warning ui-raised-button-inverse">warning</button>
            <button class="ui-raised-button ui-raised-button-danger ui-raised-button-inverse">warning</button>
        </div>
        <h2>Menu</h2>
        <ui-menu>
            <ui-menu-item title="Maps"/>
            <ui-menu-item title="Books"/>
            <ui-menu-item title="Flights"/>
            <ui-menu-item title="Apps"/>
        </ui-menu>

        <div>
            <ul class="ui-menu ui-menu-list">
                <li class="ui-menu-item">
                    <div class="ui-menu-item-title">121221</div>
                </li>
                <li class="ui-menu-item">212</li>
                <hr class="ui-divider">
                <li class="ui-menu-item">删除</li>
            </ul>
        </div>
        <h2>Icon</h2>
        <div>
            <span class="ui-icon"></span>
        </div>
        <h2>Divider</h2>
        <div>
            <hr class="ui-divider">
        </div>
        <h2>List</h2>
        <ul class="mu-list">
            <li class="mu-item">item</li>
            <li class="mu-item">item</li>
            <li class="mu-item">item</li>
        </ul>
        <h2>Paper</h2>
        <div>
            <div class="ui-paper demo-paper ui-paper-round ui-paper-1">1</div>
            <div class="ui-paper demo-paper ui-paper-round ui-paper-2">1</div>
            <div class="ui-paper demo-paper ui-paper-circle ui-paper-round ui-paper-1">2</div>
            <div class="ui-paper demo-paper ui-paper-circle ui-paper-round ui-paper-2">2</div>
        </div>
        This is content
    </ui-page>
</template>

<script>
    import abstractButton from '../../src/internal/abstractButton'

    export default {
        data() {
            return {
                page: {
                    menu: [
                        {
                            type: 'icon',
                            icon: 'help',
                            to: '/',
                            title: '帮助'
                        }
                    ]
                }
            }
        },
        components: {
            'abstract-button': abstractButton
        }
    }
</script>

<style lang="less">
    .ripple-box {
        width: 300px;
        height: 300px;
        border: 1px solid #999;
    }
    .asd {
        width: 300px;
        height: 300px;
        padding: 0;
        background-color: #fff;
        border: none;
    }
    .ui-asd-wrapper {
        position: relative;
        width: 300px;
        height: 300px;
        padding: 0;
        overflow: hidden;
    }
    .page-demo {
        background-color: #fff;
    }
</style>
