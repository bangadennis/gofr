<template>
  <v-container>
    <center>
      <v-card min-height="200" max-width="500" rounded shaped>
        <v-card-title primary-title>
          {{$t(`App.hardcoded-texts.Select App to Uninstall`)}}
        </v-card-title>
        <v-card-text v-if="!loadingApps">
          <v-layout row wrap>
            <v-flex xs3 v-for="(app, index) in apps" :key="index">
              <v-card max-width="110" height="210" rounded>
                <v-card-text>
                  <v-tooltip top>
                    <template v-slot:activator="{ on, attrs }">
                      <v-btn 
                        icon 
                        large 
                        v-bind="attrs" 
                        v-on="on"
                        @click="uninstall(app)"
                        color="red"
                      >
                        <v-icon>mdi-minus</v-icon>
                      </v-btn>
                    </template>
                    <span>{{$t(`App.hardcoded-texts.Uninstall`) + " " + app.app_short_name}}</span>
                  </v-tooltip>
                  <v-avatar color="primary" size="90">
                    <v-img :src="app.iconBase64"></v-img>
                  </v-avatar>
                  <div style="text-align: center">
                    {{app.name}}
                  </div>
                </v-card-text>
              </v-card>
            </v-flex>
            <v-spacer></v-spacer>
          </v-layout>
        </v-card-text>
        <v-progress-linear :indeterminate="true" v-else></v-progress-linear>
      </v-card>
    </center>
  </v-container>
</template>
<script>
import axios from 'axios'
export default {
  data() {
    return {
      apps: [],
      loadingApps: false
    }
  },
  methods: {
    getApps() {
      this.loadingApps = true
      axios.get("/apps/installed").then((response) => {
        this.apps = response.data
        this.loadingApps = false
      })
    },
    uninstall(app) {
      this.loadingApps = true
      axios.delete("/apps/uninstall/" + app.app_short_name).then(() => {
        this.getApps()
        this.$store.state.message.active = true
        this.$store.state.message.type = "success"
        this.$store.state.message.text = "App Uninstalled Successfully"
      }).catch(() => {
        this.$store.state.message.text = "Oops, something went wrong, App Failed to uninstall"
        this.$store.state.message.active = true
        this.$store.state.message.type = "red accent-2"
      })
    }
  },
  created() {
    this.getApps()
  }
}
</script>