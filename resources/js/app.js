

require('./bootstrap');

window.Vue = require('vue').default;

import 'advanced-laravel-vue-paginate/dist/advanced-laravel-vue-paginate.css'
Vue.use(require('advanced-laravel-vue-paginate'));
import Swal from 'sweetalert2'
window.Swal=Swal;
const Toast = Swal.mixin({
    toast: true,
    position: 'center',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer)
        toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
});
window.Toast=Toast;

require('admin-cairo/admin-cairo/dist/js/adminlte.min');
require('admin-cairo/admin-cairo/dist/js/plugins/bootstrap/js/bootstrap.bundle');
require('admin-cairo/admin-cairo/plugins/iCheck/icheck.min');
require('admin-cairo/admin-cairo/plugins/select2/select2.min');

window.url=$('meta[name="site_url"]').attr('content');
window.asset=$('meta[name="asset"]').attr('content');

require('./dash-component');
window.Fire=new Vue();
const app = new Vue({
    el: '#app',
});
