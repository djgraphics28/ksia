import './bootstrap';
import './plugins';
import Vue from 'vue';
import Vuex from 'vuex';
import vuexI18n from 'vuex-i18n';
import './core/coreApp';
import './app/AppComponents';
import './app/Helpers/GlobalHelper';

window.Vue = Vue;

/**
 * vuex
 */

Vue.use(Vuex);
import storeData from "./store/Index";
const store = new Vuex.Store(storeData);


/**
 * localization
 * $t('key') or this.$('key')
 * link: https://github.com/dkfbasel/vuex-i18n
 * */

Vue.use(vuexI18n.plugin, store);

// add translations directly to the application
let language = JSON.parse(window.localStorage.getItem('app-languages'));
let key = window.localStorage.getItem('app-language');
Vue.i18n.add(key, language);
// set the start locale to use
Vue.i18n.set(key);

/*------ localization end ------*/

'use strict';
const app = new Vue({
    store,
    el: '#app',
});
