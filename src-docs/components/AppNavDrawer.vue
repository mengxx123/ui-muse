<template>
<ui-drawer @hide="handleHide" @close="handleClose" :open="open" :docked="docked" :overlay="docked" class="app-drawer" :zDepth="1">
  <ui-appbar :zDepth="0" class="exmaples-nav-appbar">
    <a @click="handleMenuChange('#/index')" href="#/index" class="exmaples-appbar-title">Muse-UI</a>
    <!-- <ui-badge content="rc" class="exmaples-version" secondary/> -->
  </ui-appbar>
  <ui-divider/>
  <div class="exmaple-drawer-content">
    <div class="mu-version-box">
      <span class="mu-version-text">Version: </span>
      <ui-dropDown-menu :value="version" @change="handleVersionChange" v-if="versions.length > 0">
        <ui-menu-item v-for="vtext in versions" :key="'version-' + vtext" :value="vtext" :title="vtext"/>
      </ui-dropDown-menu>
    </div>
    <div class="mu-lang-box">
      <span class="mu-lang-title">Lang: </span>
      <span class="mu-lang-select">
        <a href="javascript:;" class="mu-lang" :class="{'active': lang === 'zh'}" @click="changeLang('zh')">中文</a>
        <span>/</span>
        <a href="javascript:;" class="mu-lang" :class="{'active': lang === 'en'}" @click="changeLang('en')">En</a>
      </span>
    </div>
    <ui-list @change="handleMenuChange">
      <ui-list-item to="/" title="Home"/>
    </ui-list>
    <ui-list @change="handleMenuChange" :value="menuVal">
      <ui-list-item :title="$t('getStarted')" toggleNested>
        <ui-list-item to="/install" slot="nested" :title="$t('installation')"/>
        <ui-list-item to="/usage" slot="nested" :title="$t('usage')"/>
        <ui-list-item to="/faq" slot="nested" :title="$t('faq')"/>
      </ui-list-item>
      <ui-list-item :title="$t('customization')" toggleNested>
        <ui-list-item slot="nested" to="/theme" :title="$t('theme')"/>
        <ui-list-item slot="nested" to="/colors" :title="$t('color')"/>
      </ui-list-item>

      <ui-list-item :title="$t('component')" toggleNested>
        <ui-list-item slot="nested" to="/layout" title="Layout"/>
        <ui-list-item slot="nested" to="/page" title="Page"/>
        <ui-sub-header slot="nested" class="exmaples-nav-sub-header">Material Design</ui-sub-header>
        <ui-list-item slot="nested" to="/appbar" title="App Bar"/>
        <ui-list-item slot="nested" to="/autoComplete" title="Auto Complete"/>
        <ui-list-item slot="nested" to="/avatar" title="Avatar"/>
        <ui-list-item slot="nested" to="/badge" title="Badge"/>
        <ui-list-item slot="nested" to="/bottomNav" title="Bottom Navigation"/>
        <ui-list-item slot="nested" to="/bottomSheet" title="Bottom Sheet"/>
        <ui-list-item slot="nested" title="Buttons" toggleNested>
          <ui-list-item slot="nested" to="/flatButton" title="Flat Button"></ui-list-item>
          <ui-list-item slot="nested" to="/raisedButton" title="Raised Button"></ui-list-item>
          <ui-list-item slot="nested" to="/iconButton" title="Icon Button"></ui-list-item>
          <ui-list-item slot="nested" to="/floatButton" title="Floating Action Button"></ui-list-item>
        </ui-list-item>
        <ui-list-item slot="nested" to="/card" title="Card"/>
        <ui-list-item slot="nested" to="/chip" title="Chip"/>
        <ui-list-item slot="nested" to="/datePicker" title="Date Picker"/>
        <ui-list-item slot="nested" to="/dialog" title="Dialog"/>
        <ui-list-item slot="nested" to="/divider" title="Divider"/>
        <ui-list-item slot="nested" to="/drawer" title="Drawer"/>
        <ui-list-item slot="nested" to="/gridList" title="Grid List"/>
        <ui-list-item slot="nested" to="/icon" title="Icon"/>
        <ui-list-item slot="nested" to="/list" title="List"/>
        <ui-list-item slot="nested" title="Menus" toggleNested>
          <ui-list-item slot="nested" to="/menu" title="Menu"/>
          <ui-list-item slot="nested" to="/iconMenu" title="Icon Menu"/>
          <ui-list-item slot="nested" to="/dropDownMenu" title="DropDown Menu"/>
        </ui-list-item>
        <ui-list-item slot="nested" to="/paper" title="Paper"/>
        <ui-list-item slot="nested" to="/popover" title="Popover"/>
        <ui-list-item slot="nested" title="Progress" toggleNested>
          <ui-list-item slot="nested" to="/linearProgress" title="Linear Progress"/>
          <ui-list-item slot="nested" to="/circularProgress" title="Circular Progress"/>
        </ui-list-item>
        <ui-list-item slot="nested" to="/selectField" title="Select Field"/>
        <ui-list-item slot="nested" title="Selection Controls" toggleNested>
          <ui-list-item slot="nested" to="/checkbox" title="Checkbox"/>
          <ui-list-item slot="nested" to="/radio" title="Radio"/>
          <ui-list-item slot="nested" to="/switch" title="Switch"/>
        </ui-list-item>
        <ui-list-item slot="nested" to="/slider" title="Slider"/>
        <ui-list-item slot="nested" to="/snackbarToast" title="SnackBar & Toast"/>
        <ui-list-item slot="nested" to="/stepper" title="Stepper"/>
        <ui-list-item slot="nested" to="/subHeader" title="Sub Header"/>
        <ui-list-item slot="nested" to="/table" title="Table"/>
        <ui-list-item slot="nested" to="/tabs" title="Tabs"/>
        <ui-list-item slot="nested" to="/textField" title="Text Field"/>
        <ui-list-item slot="nested" to="/timePicker" title="Time Picker"/>
        <ui-list-item slot="nested" to="/tooltip" title="Tooltip"/>
        <ui-sub-header slot="nested" class="exmaples-nav-sub-header">Others</ui-sub-header>
        <ui-list-item slot="nested" to="/alert" title="Alert"/>
        <ui-list-item slot="nested" to="/backTop" title="BackTop"/>
        <ui-list-item slot="nested" to="/breadcrumb" title="Breadcrumb"/>
        <ui-list-item slot="nested" to="/contentBlock" title="Content Block"/>
        <ui-list-item slot="nested" to="/flexbox" title="Flex Box"/>
        <ui-list-item slot="nested" to="/grid" title="Grid"/>
        <ui-list-item slot="nested" to="/infiniteScroll" title="Infinite Scroll"/>
        <ui-list-item slot="nested" to="/pagination" title="Pagination"/>
        <ui-list-item slot="nested" to="/picker" title="Picker"/>
        <ui-list-item slot="nested" to="/popup" title="Popup"/>
        <ui-list-item slot="nested" to="/refreshControl" title="Refresh Control"/>
        <ui-list-item slot="nested" to="/timeline" title="Timeline"/>
      </ui-list-item>
      <ui-list-item :title="$t('more')" toggleNested>
        <ui-list-item slot="nested" :title="$t('changeLog')" to="/changeLog"/>
        <ui-list-item slot="nested" :title="$t('contributing')" to="/contributing"/>
      </ui-list-item>
    </ui-list>
    <ui-divider/>
    <ui-sub-header>{{$t('resource')}}</ui-sub-header>
    <ui-list>
      <ui-list-item href="https://github.com/museui/muse-ui" target="_blank" title="GitHub"/>
      <ui-list-item href="http://vuejs.org/" target="_blank" title="Vue"/>
      <ui-list-item href="https://material.google.com/" target="_blank" title="Material Design"/>
      <ui-list-item href="http://www.material-ui.com/" target="_blank" title="Material-UI"/>
    </ui-list>
  </div>
</ui-drawer>
</template>

<script>
/* eslint-disable */
import Vue from "vue";
import zh from "./zh";
import en from "./en";
import packageJson from "../../package.json";
export default {
  props: {
    open: {
      type: Boolean,
      default: true
    },
    docked: {
      type: Boolean,
      default: true
    }
  },
  data() {
    return {
      menuVal: "#/",
      version: packageJson.version,
      versions: []
    };
  },
  computed: {
    lang() {
      return Vue.config.lang;
    }
  },
  methods: {
    handleVersionChange(val) {
      if (val !== this.version) {
        var url = this.versions.indexOf(val) === 0 ? "/" : "/" + val;
        window.open(url);
      }
    },
    handleClose() {
      this.$emit("close");
    },
    handleMenuChange(val) {
      this.menuVal = val;
      if (this.docked) {
        window.location.hash = this.menuVal;
      } else {
        this.changeHref = true;
      }
      this.$emit("change", val);
    },
    handleHide() {
      if (!this.changeHref) return;
      window.location.hash = this.menuVal;
      this.changeHref = false;
    },
    changeLang(lang) {
      Vue.config.lang = lang;
      window.localStorage.setItem("lang", lang);
    }
  },
  mounted() {
    this.menuVal = window.location.hash;
    window.addEventListener("hashchange", () => {
      this.menuVal = window.location.hash;
    });
    var xhr = new window.XMLHttpRequest();
    xhr.open("GET", "/version.json", true);
    xhr.onload = () => {
      if (xhr.readyState === 4) {
        if (xhr.status === 200) {
          this.versions = JSON.parse(xhr.responseText);
          console.log(this.versions, this.version);
        } else {
          console.error(xhr.statusText);
        }
      }
    };
    xhr.send();
  },
  locales: {
    zh,
    en
  }
};
</script>

<style lang="less">
@import "../../src/styles/import.less";
.app-drawer {
  display: flex;
  flex-direction: column;
}

.exmaples-nav-appbar.mu-appbar {
  flex-shrink: 0;
}
.exmaple-drawer-content {
  flex: 1;
  .scrollable();
  .no-scrollbar();
}
.exmaples-appbar-title {
  color: inherit;
  display: inline-block;
}

.exmaples-version {
  margin-left: 10px;
  vertical-align: text-top;
}

.exmaples-nav-sub-header {
  padding-left: 34px;
}

.mu-version-box {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 48px;
  margin-top: 8px;
  padding-left: 16px;
  padding-right: 16px;
}
.mu-version-text {
  font-size: 16px;
  margin-top: 8px;
  width: 60px;
}

.mu-lang-box {
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 48px;
  margin-top: 8px;
  padding-left: 16px;
  padding-right: 40px;
  font-size: 16px;
}

.mu-lang {
  color: inherit;
  margin-left: 2px;
  margin-right: 2px;
  &:last-child {
    margin-right: 0;
  }
  &:hover,
  &.active {
    color: @accentColor;
  }
}
</style>
