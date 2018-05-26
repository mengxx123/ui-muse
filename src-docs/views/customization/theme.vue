<template>
<div class="content-wrapper">
  <markdown-element :text="$t('title')"/>
  <ui-paper :class="['theme-' + theme, 'demo-theme-paper']">
    <ui-tabs :value="theme" @change="changeTheme">
      <ui-tab title="DEFAULT" value="default"/>
      <ui-tab title="LIGHT" value="light"/>
      <ui-tab title="DARK" value="dark"/>
      <ui-tab title="CARBON" value="carbon"/>
      <ui-tab title="TEAL" value="teal"/>
    </ui-tabs>
    <ui-row>
      <ui-col class="demo-theme-group" width="100" desktop="33" tablet="33">
        <div class="demo-theme-item center">
          <ui-avatar icon="star" :size="56"/>
        </div>
        <div class="demo-theme-item center">
          <ui-raised-button label="secondary" secondary/>
        </div>
        <div class="demo-theme-item center">
          <ui-raised-button label="primary" primary/>
        </div>
        <div class="demo-theme-item center">
          <ui-raised-button label="default"/>
        </div>
      </ui-col>
      <ui-col class="demo-theme-group" width="100" desktop="33" tablet="33">
        <div class="demo-theme-item">
          <ui-checkbox label="checkbox"/><br/>
          <ui-checkbox label="disabled checkbox" disabled/>
        </div>
        <div class="demo-theme-item">
          <ui-radio name="radio_group" nativeValue="1" label="radio1"/><br/>
          <ui-radio name="radio_group" nativeValue="2" label="radio2"/><br/>
          <ui-radio label="disabled radio" nativeValue="3"  disabled/>
        </div>
        <div class="demo-theme-item">
          <ui-switch label="switch"/><br/>
          <ui-switch label="disabled switch"  disabled/>
        </div>
      </ui-col>
      <ui-col class="demo-theme-group" width="100" desktop="33" tablet="33">
        <div class="demo-theme-item">
          <ui-text-field hintText="Text Field" style="width: 100%"/>
        </div>
        <div class="demo-theme-item">
          <ui-date-picker hintText="Landspace Dialog" style="width: 100%; overflow:hidden;"/>
        </div>
        <div class="demo-theme-item">
          <ui-dropDown-menu :value="dropDown" @change="changeDropDown" style="width: 100%;">
            <ui-menu-item :value="1" title="Never" />
            <ui-menu-item :value="2" title="Every Night" />
            <ui-menu-item :value="3" title="Weeknights" />
            <ui-menu-item :value="4" title="Weekends" />
            <ui-menu-item :value="5" title="Weekly" />
          </ui-dropDown-menu>
        </div>
      </ui-col>
    </ui-row>
    <div class="demo-theme-group-slider">
      <ui-slider :value="30"/>
    </div>
    <ui-row>
      <ui-col class="demo-theme-group" width="100" desktop="33" tablet="33">
        <div class="demo-theme-item">
          <ui-flat-button label="VIEW DIALOG" @click="openDialog"/>
        </div>
      </ui-col>
      <ui-col class="demo-theme-group" width="100" desktop="33" tablet="33">
        <div class="demo-theme-item">
          <ui-flat-button label="VIEW DRAWER" @click="toggleDrawer"/>
        </div>
      </ui-col>
      <ui-col class="demo-theme-group" width="100" desktop="33" tablet="33">
        <div class="demo-theme-item">
          <ui-flat-button label="VIEW SNACKBAR" @click="showSnackbar"/>
        </div>
      </ui-col>
    </ui-row>
    <ui-dialog :open="dialog" title="Dialog" @close="closeDialog">
      {{$t('dialogDesc')}}
      <ui-flat-button slot="actions" @click="closeDialog" primary :label="$t('cancel')"/>
      <ui-flat-button slot="actions" primary @click="closeDialog" :label="$t('ok')"/>
    </ui-dialog>
    <ui-drawer :open="drawer" :docked="false" @close="toggleDrawer()">
      <ui-menu @itemClick="toggleDrawer()">
        <ui-menu-item title="Menu Item 1"/>
        <ui-menu-item title="Menu Item 2"/>
        <ui-menu-item title="Menu Item 3"/>
      </ui-menu>
    </ui-drawer>
    <ui-snackbar v-if="snackbar" :message="$t('snackbarDesc')" :action="$t('close')" @actionClick="hideSnackbar" @close="hideSnackbar"/>
  </ui-paper>
  <markdown-element :text="$t('themeDoc')"/>
</div>
</template>

<script>
import _default from 'raw!less!../../assets/themes/theme-default.less'
import light from 'raw!less!../../assets/themes/theme-light.less'
import dark from 'raw!less!../../assets/themes/theme-dark.less'
import carbon from 'raw!less!../../assets/themes/theme-carbon.less'
import teal from 'raw!less!../../assets/themes/theme-teal.less'
import zh from './zh'
import en from './en'

const themes = {
  light,
  dark,
  carbon,
  teal,
  default: _default
}
let theme = 'default'
export default {
  data () {
    return {
      dialog: false,
      drawer: false,
      snackbar: false,
      dropDown: 3,
      theme: theme
    }
  },
  methods: {
    changeDropDown (val) {
      this.dropDown = val
    },
    showSnackbar () {
      this.snackbar = true
      if (this.snackTimer) clearTimeout(this.snackTimer)
      this.snackTimer = setTimeout(() => { this.snackbar = false }, 2000)
    },
    hideSnackbar () {
      this.snackbar = false
      if (this.snackTimer) clearTimeout(this.snackTimer)
    },
    toggleDrawer () {
      this.drawer = !this.drawer
    },
    openDialog () {
      this.dialog = true
    },
    closeDialog () {
      this.dialog = false
    },
    changeTheme (val) {
      this.theme = theme = val
      const styleEl = this.getThemeStyle()
      styleEl.innerHTML = themes[theme] || ''
    },
    getThemeStyle () {
      const themeId = 'muse-theme'
      let styleEl = document.getElementById(themeId)
      if (styleEl) return styleEl
      styleEl = document.createElement('style')
      styleEl.id = themeId
      document.body.appendChild(styleEl)
      return styleEl
    }
  },
  locales: {
    zh,
    en
  }
}
</script>

<style lang="less">
.demo-theme-paper {
  margin-top: 16px;
  margin-bottom: 16px;
}
.demo-theme-group{
  margin-top: 16px;
  padding: 0 50px;
}

.demo-theme-item {
  margin-bottom: 16px;
  min-height: 24px;
  text-align: left;
  &.center {
    text-align: center;
  }
}

.demo-theme-group-slider {
  padding: 24px 50px 48px;
}

</style>
