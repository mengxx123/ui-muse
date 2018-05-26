<template>
  <ui-page title="1212" :page="page" backable>

  </ui-page>
</template>

<script>
    export default {
        data () {
            return {
                page: {
                    menu: [
                        {
                            id: '1',
                            type: 'icon',
                            icon: 'menu',
                            title: '测试一下',
                            click: this.test
                        },
                        {
                            id: '2',
                            type: 'text',
                            text: '更多工具',
                            href: 'http://tool.yunser.com/',
                            target: '_blank'
                        },
                        {
                            id: '3',
                            type: 'button',
                            visible: true,
                            text: '更多工具',
                            href: 'http://tool.yunser.com/'
                        }
                    ],
                    more: [
                        {
                            id: '4',
                            title: '帮助',
                            to: '/help',
                            target: '_blank'
                        },
                        {
                            id: '5',
                            title: '更多工具2',
                            href: 'http://tool.yunser.com/',
                            target: '_blank'
                        },
                        {
                            id: '6',
                            title: '看不见',
                            to: '/help',
                            visible: false
                        },
                        {
                            id: '7',
                            title: '有图标',
                            icon: 'menu'
                        }
                    ]
                }
            }
        },
        methods: {
            test() {
                console.log(1)
                window.alert(1)
            }
        }
    }
</script>
