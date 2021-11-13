export default {
    name: "TheCarDetail",
    props:{
        item:{type:Object,default:{}},
        canshow:{default:false},
        t:{type:String,default:''},
    },
    data: function () {
        return {
            myflag: this.canshow,
        }
    },

    template:
        `<div class="flex-wrapper">
          <div class="car-detailleft">
            {{item!=null?item.Name:''}}
          </div>
         <div class="car-detailmiddle"  @click="changeLogic()">
            <h2>{{item!=null?item.Name:''}}
          </h2>
            <img class="car" :src="item!=null?item.ImageUrl:''" >
       
        </div>
        <div class="car-detailright">
            <div v-if="canshow">
            <h4>{{ item.outputrpm }}</h4>
             <p>Output (rpm)</p>
            <h4>{{ item.Displacement }}</h4>
           <p>Displacement (cm³)</p>
           <h4>{{ item.Maxtorque }}</h4>
           <p>Max. torque/revs (rpm)</p>
           <h4>{{ item.kmh }}</h4>
            <p>0-100km/hr (s) </p>
          </div>
         </div>
      </div>`,
    created: function () {
        console.log("detail:"+this.canshow);
        console.log("t:"+this.t);

    },

    methods: {
        changeLogic() {
            console.log("detail2:"+this.myflag);
            console.log("t:"+this.t);
            this.$emit("change", this.myflag)
        },
    }
}