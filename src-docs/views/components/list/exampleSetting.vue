<template>
  <mobile-tear-sheet>
    <ui-list>
      <ui-list-item disabled title="通知与信息设置" describeText="总是中断"/>
    </ui-list>
    <ui-divider />
    <ui-list>
      <ui-sub-header>声音开启设置</ui-sub-header>
      <ui-list-item disableRipple @click="handleToggle('events')" title="事件和提醒">
        <ui-switch v-model="events"  slot="right"/>
      </ui-list-item>
      <ui-list-item disableRipple @click="handleToggle('calls')" title="电话">
        <ui-switch v-model="calls" slot="right"/>
      </ui-list-item>
      <ui-list-item disableRipple @click="handleToggle('messages')" title="信息">
        <ui-switch v-model="messages" slot="right"/>
      </ui-list-item>
    </ui-list>
    <ui-list>
      <ui-sub-header>通知设置</ui-sub-header>
      <ui-list-item disableRipple @click="handleToggle('notifications')"  title="通知">
        <ui-checkbox v-model="notifications" slot="left"/>
      </ui-list-item>
      <ui-list-item disableRipple @click="handleToggle('sounds')"  title="声音">
        <ui-checkbox v-model="sounds" slot="left"/>
      </ui-list-item>
      <ui-list-item disableRipple @click="handleToggle('videoSounds')" title="视频的声音">
        <ui-checkbox v-model="videoSounds" slot="left"/>
      </ui-list-item>
    </ui-list>
  </mobile-tear-sheet>
</template>

<script>
import mobileTearSheet from '../../../components/mobileTearSheet'
export default {
  data () {
    return {
      events: false,
      calls: false,
      messages: false,
      notifications: false,
      sounds: false,
      videoSounds: false
    }
  },
  methods: {
    handleToggle (key) {
      this[key] = !this[key]
    }
  },
  components: {
    'mobile-tear-sheet': mobileTearSheet
  }
}
</script>
