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
        
      </div>
      <div class="col-sm-2 col-lg-2 col-md-2"></div>
    </div>
   
      <people  v-bind:msg = sites v-show = "showCode[0]"></people>
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

      var that = this;

      this.showCode = [false, false, false, false, false, false]

      var serarch_id = 0
      var urlStr = ""


      if (that.url.indexOf("people") != -1){
        that.showCode[0] = true
        serarch_id = that.url.replace("people/", "").replace("/", "")
        urlStr =  "/api/graphql?query={people(id:" + serarch_id +  "){Name,Height,Mass,HairColor,SkinColor,EyeColor,BirthYear,Gender,Homeworld,FilmURLs,SpeciesURLs,VehicleURLs,StarshipURLs,Created,Edited,URL,}}"
        

      } else if (that.url.indexOf("planets") != -1){
        that.showCode[1] = true;
        serarch_id = that.url.replace("planets/", "").replace("/", "")
        urlStr = "/api/graphql?query={planets(id:" + serarch_id +  "){Name,RotationPeriod,OrbitalPeriod,Diameter,Climate,Gravity,Terrain,SurfaceWater,Population,ResidentURLs,FilmURLs,Created,Edited,URL,}}"

      } else if (that.url.indexOf("films") != -1){
        that.showCode[2] = true;
        serarch_id = that.url.replace("films/", "").replace("/", "")
        urlStr = "/api/graphql?query={films(id:" + serarch_id + "){Title,EpisodeID,OpeningCrawl,Director,Producer,CharacterURLs,PlanetURLs,StarshipURLs,VehicleURLs,SpeciesURLs,Created,Edited,URL,}}"

      } else if (that.url.indexOf("species") != -1){
        that.showCode[3] = true;
        serarch_id = that.url.replace("species/", "").replace("/", "")
        urlStr = "/api/graphql?query={Species(id:" + serarch_id + "){Name,Classification,Designation,AverageHeight,SkinColors,HairColors,EyeColors,AverageLifespan,Homeworld,Language,PeopleURLs,FilmURLs,Created,Edited,URL,}}"

      } else if (that.url.indexOf("vehicles") != -1){
        that.showCode[4] = true;
        serarch_id = that.url.replace("vehicles/", "").replace("/", "")
        urlStr = "/api/graphql?query={vehicles(id:"+ serarch_id +"){Name,Model,Manufacturer,CostInCredits,Length,MaxAtmospheringSpeed,Crew,Passengers,CargoCapacity,Consumables,VehicleClass,PilotURLs,FilmURLs,Created,Edited,URL,}}"

      } else if (that.url.indexOf("starships") != -1){
        that.showCode[5] = true;

        serarch_id = that.url.replace("starships/", "").replace("/", "")
        urlStr = "/api/graphql?query={starships(id:" + serarch_id + "){Name,Model,Manufacturer,CostInCredits,Length,MaxAtmospheringSpeed,Crew,Passengers,CargoCapacity,Consumables,HyperdriveRating,MGLT,StarshipClass,PilotURLs,FilmURLs,Created,Edited,URL,}}"

      }

      console.log(urlStr)
     
      that.axios.get(urlStr)
      .then(function(res) {
        console.log(res.data["data"]["people"])
        that.sites = res.data["data"]["people"]
        console.log(res.data["data"]["people"].BirthYear)


      })

      //alert("fuck off Vue,  only fucking junk")

    }

  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
