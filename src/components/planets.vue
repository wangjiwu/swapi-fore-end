<template>
  <div>
      <h1 align="center"> planets </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>name</td>
              <td>{{msg.name}}</td>
          </tr>

          <tr>
              <td>rotation_period</td>
              <td>{{msg.rotation_period}}</td>
          </tr>

          <tr>
              <td>orbital_period</td>
              <td>{{msg.orbital_period}}</td>
          </tr>

          <tr>
              <td>diameter</td>
              <td>{{msg.diameter}}</td>
          </tr>

          <tr>
              <td>climate</td>
              <td>{{msg.climate}}</td>
          </tr>

          <tr>
              <td>gravity</td>
              <td>{{msg.gravity}}</td>
          </tr>

          <tr>
              <td>terrain</td>
              <td>{{msg.terrain}}</td>
          </tr>

          <tr>
              <td>surface_water</td>
              <td>{{msg.surface_water}}</td>
          </tr>

          <tr>
              <td>population</td>
              <td>{{msg.population}}</td>
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
              <td>residents</td>
              <td>
              <a v-for="item in msg.residents" :key="item">
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
    name: 'planets',
    props:{
        msg : String

    },
}
</script>


