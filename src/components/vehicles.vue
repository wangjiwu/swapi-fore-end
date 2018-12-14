<template>
  <div>
      <h1 align="center"> vehicles </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>name</td>
              <td>{{msg.name}}</td>
          </tr>

          <tr>
              <td>model</td>
              <td>{{msg.model}}</td>
          </tr>

          <tr>
              <td>manufacturer</td>
              <td>{{msg.manufacturer}}</td>
          </tr>

          <tr>
              <td>cost_in_credits</td>
              <td>{{msg.cost_in_credits}}</td>
          </tr>

          <tr>
              <td>length</td>
              <td>{{msg.length}}</td>
          </tr>

          <tr>
              <td>max_atmosphering_speed</td>
              <td>{{msg.max_atmosphering_speed}}</td>
          </tr>

          <tr>
              <td>crew</td>
              <td>{{msg.crew}}</td>
          </tr>

          <tr>
              <td>passengers</td>
              <td>{{msg.passengers}}</td>
          </tr>

          <tr>
              <td>cargo_capacity</td>
              <td>{{msg.cargo_capacity}}</td>
          </tr>

          <tr>
              <td>consumables</td>
              <td>{{msg.consumables}}</td>
          </tr>

          <tr>
              <td>vehicle_class</td>
              <td>{{msg.vehicle_class}}</td>
          </tr>

          <tr>
              <td>created</td>
              <td>{{msg.created}}</td>
          </tr>

          <tr>
              <td>edited</td>
              <td>{{msg.edited}}</td>
          </tr>

          <tr>
              <td>url</td>
              <td>{{msg.url}}</td>
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


