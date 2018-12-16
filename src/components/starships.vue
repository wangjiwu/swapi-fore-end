<template>
  <div>
      <h1 align="center"> starships </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>Name</td>
              <td>{{msg["data"]["starships"].Name}}</td>
          </tr>

          <tr>
              <td>Model</td>
              <td>{{msg["data"]["starships"].Model}}</td>
          </tr>

          <tr>
              <td>Manufacturer</td>
              <td>{{msg["data"]["starships"].Manufacturer}}</td>
          </tr>

          <tr>
              <td>CostInCredits</td>
              <td>{{msg["data"]["starships"].CostInCredits}}</td>
          </tr>

          <tr>
              <td>Length</td>
              <td>{{msg["data"]["starships"].Length}}</td>
          </tr>

          <tr>
              <td>MaxAtmospheringSpeed</td>
              <td>{{msg["data"]["starships"].MaxAtmospheringSpeed}}</td>
          </tr>

          <tr>
              <td>Crew</td>
              <td>{{msg["data"]["starships"].Crew}}</td>
          </tr>

          <tr>
              <td>Passengers</td>
              <td>{{msg["data"]["starships"].Passengers}}</td>
          </tr>

          <tr>
              <td>CargoCapacity</td>
              <td>{{msg["data"]["starships"].CargoCapacity}}</td>
          </tr>

          <tr>
              <td>Consumables</td>
              <td>{{msg["data"]["starships"].Consumables}}</td>
          </tr>

          <tr>
              <td>HyperdriveRating</td>
              <td>{{msg["data"]["starships"].HyperdriveRating}}</td>
          </tr>

          <tr>
              <td>MGLT</td>
              <td>{{msg["data"]["starships"].MGLT}}</td>
          </tr>

          <tr>
              <td>StarshipClass</td>
              <td>{{msg["data"]["starships"].StarshipClass}}</td>
          </tr>

          <tr>
              <td>Created</td>
              <td>{{msg["data"]["starships"].creCreatedated}}</td>
          </tr>

          <tr>
              <td>Edited</td>
              <td>{{msg["data"]["starships"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["starships"].URL}}</td>
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
    name: 'starships',
    props:{
        msg : String

    },
}
</script>


