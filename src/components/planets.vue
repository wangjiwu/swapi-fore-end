<template>
  <div>
      <h1 align="center"> planets </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>Name</td>
              <td>{{msg["data"]["planets"].Name}}</td>
          </tr>

          <tr>
              <td>RotationPeriod</td>
              <td>{{msg["data"]["planets"].RotationPeriod}}</td>
          </tr>

          <tr>
              <td>OrbitalPeriod</td>
              <td>{{msg["data"]["planets"].OrbitalPeriod}}</td>
          </tr>

          <tr>
              <td>Diameter</td>
              <td>{{msg["data"]["planets"].Diameter}}</td>
          </tr>

          <tr>
              <td>Climate</td>
              <td>{{msg["data"]["planets"].Climate}}</td>
          </tr>

          <tr>
              <td>Gravity</td>
              <td>{{msg["data"]["planets"].Gravity}}</td>
          </tr>

          <tr>
              <td>Terrain</td>
              <td>{{msg["data"]["planets"].Terrain}}</td>
          </tr>

          <tr>
              <td>SurfaceWater</td>
              <td>{{msg["data"]["planets"].SurfaceWater}}</td>
          </tr>

          <tr>
              <td>Population</td>
              <td>{{msg["data"]["planets"].Population}}</td>
          </tr>

          <tr>
              <td>Created</td>
              <td>{{msg["data"]["planets"].Created}}</td>
          </tr>

          <tr>
              <td>Edited</td>
              <td>{{msg["data"]["planets"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["planets"].URL}}</td>
          </tr>

          <tr>
              <td>residents</td>
              <td>
              <a v-for="item in msg[\"data\"][\"planets\"].residents" :key="item">
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


