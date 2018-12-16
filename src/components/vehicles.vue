<template>
  <div>
      <h1 align="center"> vehicles </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>Name</td>
              <td>{{msg["data"]["vehicles"].Name}}</td>
          </tr>

          <tr>
              <td>Model</td>
              <td>{{msg["data"]["vehicles"].Model}}</td>
          </tr>

          <tr>
              <td>Manufacturer</td>
              <td>{{msg["data"]["vehicles"].Manufacturer}}</td>
          </tr>

          <tr>
              <td>CostInCredits</td>
              <td>{{msg["data"]["vehicles"].CostInCredits}}</td>
          </tr>

          <tr>
              <td>Length</td>
              <td>{{msg["data"]["vehicles"].Length}}</td>
          </tr>

          <tr>
              <td>MaxAtmospheringSpeed</td>
              <td>{{msg["data"]["vehicles"].MaxAtmospheringSpeed}}</td>
          </tr>

          <tr>
              <td>Crew</td>
              <td>{{msg["data"]["vehicles"].Crew}}</td>
          </tr>

          <tr>
              <td>Passengers</td>
              <td>{{msg["data"]["vehicles"].Passengers}}</td>
          </tr>

          <tr>
              <td>CargoCapacity</td>
              <td>{{msg["data"]["vehicles"].CargoCapacity}}</td>
          </tr>

          <tr>
              <td>Consumables</td>
              <td>{{msg["data"]["vehicles"].Consumables}}</td>
          </tr>

          <tr>
              <td>VehicleClass</td>
              <td>{{msg["data"]["vehicles"].VehicleClass}}</td>
          </tr>

          <tr>
              <td>Created</td>
              <td>{{msg["data"]["vehicles"].Created}}</td>
          </tr>

          <tr>
              <td>Edited</td>
              <td>{{msg["data"]["vehicles"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["vehicles"].URL}}</td>
          </tr>

          <tr>
              <td>pilots</td>
              <td>
              <a v-for="item in msg.pilots" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>films</td>
              <td>
              <a v-for="item in msg.films" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>


      </table>
  </div>
</template>


<script>

export default {
    name: 'vehicles',
    props:{
        msg : String

    },
}
</script>


