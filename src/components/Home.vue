<template>
  <div>
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6 center">
        <p>All the Star Wars data you've ever wanted:</p>
        <p>
          <b>Planets, Spaceships, Vehicles, People, Films and Species</b>
        </p>
        <p>From all
          <b>SEVEN</b> Star Wars films
        </p>
        <h4>This is our API！</h4>
      </div>
      <div class="col-lg-3"></div>
    </div>
    <div class="row">
      <hr>
      <div class="col-sm-2 col-lg-2 col-md-2"></div>
      <div class="col-lg-8 col-md-8 col-sm-8">
        <h1 class="center">Try it now!</h1>
        <div class="input-group">
          <span class="input-group-addon">localhost:8080/api/</span>
          <input v-model="url" id="interactive" type="text" class="form-control" placeholder="people/1/">
          <span class="input-group-btn">
            <button v-on:click="service_call()" class="btn btn-primary">request</button>
          </span>
        </div>
        <small>Need a hint? try
          <a href="#" v-on:click="update('people/1/')">
            <i>people/1/</i>
          </a> or
          <a href="#" v-on:click="update('planets/3/')">
            <i>planets/3/</i>
          </a> or
          <a href="#" v-on:click="update('starships/9/')">
            <i>starships/9/</i>
          </a>
        </small>
        <p class="lead pad_top">Result:</p>
        <div class="well">
          <pre id="interactive_output" class="pre-scrollable">
            <p>{{sites}}</p>
          </pre>
        </div>
      </div>
      <div class="col-sm-2 col-lg-2 col-md-2"></div>
    </div>
    
    <people v-bind:msg = sites v-show = "showCode[0]"></people>
    <planets v-bind:msg = sites v-show = "showCode[1]"></planets>
    <films v-bind:msg = sites v-show = "showCode[2]"></films>
    <species v-bind:msg = sites v-show = "showCode[3]"></species>
    <vehicles v-bind:msg = sites v-show = "showCode[4]"></vehicles>
    <starships v-bind:msg = sites v-show = "showCode[5]"></starships>


  </div>




</template>

<script>
import people from "../components/people.vue";
import planets from "../components/planets.vue";
import films from "../components/films.vue";
import species from "../components/species.vue";
import vehicles from "../components/vehicles.vue";
import starships from "../components/starships.vue";

export default {
  name: "Home",
  data(){
    return {
      url: "",
      sites: "",
      msg: "",
      showCode : [false, false, false, false, false, false]
    }
  },

  components:{people,planets,films,species,vehicles,starships},

  methods: {
    update: function (message) {
      this.url = message
      this.service_call()
    },
    service_call: function() {
      // var that = this;
      // var url = "https://swapi.co/api/people/1/?format=json"; 
      // that.axios.get(url).then(function(response){ //接口返回数据
      //   console.log(response.data)
      //   that.sites = response.data;

      // },function(error){
      //   alert(error)
      // })
      var that = this;
      //that.sites = "fuck"

      this.showCode = [false, false, false, false, false, false]

      if (that.url.indexOf("people") != -1){
        that.showCode[0] = true;
      } else if (that.url.indexOf("planets") != -1){
        that.showCode[1] = true;
      } else if (that.url.indexOf("films") != -1){
        that.showCode[2] = true;
      } else if (that.url.indexOf("species") != -1){
        that.showCode[3] = true;
      } else if (that.url.indexOf("vehicles") != -1){
        that.showCode[4] = true;
      } else if (that.url.indexOf("starships") != -1){
        that.showCode[5] = true;
      }

      that.axios.get("https://swapi.co/api/" + that.url + "?format=json")
      .then(function(res) {
        //console.log(res.data)
        that.sites = res.data

      })

      //alert("fuck off Vue,  only fucking junk")

    }

  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
