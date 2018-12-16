<template>
  <div>
      <h1 align="center"> species </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>Name</td>
              <td>{{msg["data"]["species"].Name}}</td>
          </tr>

          <tr>
              <td>Classification</td>
              <td>{{msg["data"]["species"].Classification}}</td>
          </tr>

          <tr>
              <td>Designation</td>
              <td>{{msg["data"]["species"].Designation}}</td>
          </tr>

          <tr>
              <td>AverageHeight</td>
              <td>{{msg["data"]["species"].AverageHeight}}</td>
          </tr>

          <tr>
              <td>SkinColors</td>
              <td>{{msg["data"]["species"].SkinColors}}</td>
          </tr>

          <tr>
              <td>HairColors</td>
              <td>{{msg["data"]["species"].HairColors}}</td>
          </tr>

          <tr>
              <td>EyeColors</td>
              <td>{{msg["data"]["species"].EyeColors}}</td>
          </tr>

          <tr>
              <td>AverageLifespan</td>
              <td>{{msg["data"]["species"].AverageLifespan}}</td>
          </tr>

          <tr>
              <td>Homeworld</td>
              <td>{{msg["data"]["species"].Homeworld}}</td>
          </tr>

          <tr>
              <td>Language</td>
              <td>{{msg["data"]["species"].Language}}</td>
          </tr>

          <tr>
              <td>Created</td>
              <td>{{msg["data"]["species"].Created}}</td>
          </tr>

          <tr>
              <td>Edited</td>
              <td>{{msg["data"]["species"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["species"].URL}}</td>
          </tr>

          <tr>
              <td>people</td>
              <td>
              <a v-for="item in msg.people" :key="item">
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
    name: '',
    props:{
        msg : String

    },
}
</script>


