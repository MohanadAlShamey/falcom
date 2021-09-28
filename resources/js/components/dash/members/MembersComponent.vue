<template>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    المسجلين
                </div>
                <div class="card-body">
                    <input type="text" v-model="q" class="form-control-sm" placeholder="بحث">

                    <div class="table-responsive mt-2">
                        <table class="table table-bordered">
                            <tr>
                                <td>الاسم</td>
                                <td>البريد الإلكتروني</td>
                                <td>الدولة</td>
                                <td>رقم الهاتف</td>
                                <td>الصفحة</td>
                                <td>التحكم</td>
                            </tr>
                            <tr v-for="member in members.data">
                                <td>{{ member.full_name }}</td>
                                <td>{{ member.email }}</td>
                                <td>{{ member.country['country_name_ar'] }}</td>
                                <td>{{ member.phone }}</td>
                                <td>{{ member.page }}</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "MembersComponent",
    data(){
        return {
            members:{},
            q:'',
        }
    },
    methods:{
        getAllMembers(page=1){
            axios.get(`${url}/member/getAllMembers?page=${page}&q=${this.q}`).then(res=>{
                this.members=res.data;
            })
        }
    },
    created() {
        this.getAllMembers();
    },
    watch:{
        q:_.debounce(function(v){
            this.getAllMembers();
        },800),
    }
}
</script>

<style scoped>

</style>
