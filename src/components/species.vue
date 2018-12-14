<template>
  <div>
      <h1 align="center"> species </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>name</td>
              <td>{{msg.name}}</td>
          </tr>

          <tr>
              <td>classification</td>
              <td>{{msg.classification}}</td>
          </tr>

          <tr>
              <td>designation</td>
              <td>{{msg.designation}}</td>
          </tr>

          <tr>
              <td>average_height</td>
              <td>{{msg.average_height}}</td>
          </tr>

          <tr>
              <td>skin_colors</td>
              <td>{{msg.skin_colors}}</td>
          </tr>

          <tr>
              <td>hair_colors</td>
              <td>{{msg.hair_colors}}</td>
          </tr>

          <tr>
              <td>eye_colors</td>
              <td>{{msg.eye_colors}}</td>
          </tr>

          <tr>
              <td>average_lifespan</td>
              <td>{{msg.average_lifespan}}</td>
          </tr>

          <tr>
              <td>homeworld</td>
              <td>{{msg.homeworld}}</td>
          </tr>

          <tr>
              <td>language</td>
              <td>{{msg.language}}</td>
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


