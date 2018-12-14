<template>
  <div>
      <h1 align="center"> films </h1>
      <table class="table table-bordered table-striped text-center">
          <tr>
              <td>title</td>
              <td>{{msg.title}}</td>
          </tr>

          <tr>
              <td>episode_id</td>
              <td>{{msg.episode_id}}</td>
          </tr>

          <tr>
              <td>opening_crawl</td>
              <td>{{msg.opening_crawl}}</td>
          </tr>

          <tr>
              <td>director</td>
              <td>{{msg.director}}</td>
          </tr>

          <tr>
              <td>producer</td>
              <td>{{msg.producer}}</td>
          </tr>

          <tr>
              <td>release_date</td>
              <td>{{msg.release_date}}</td>
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
              <td>characters</td>
              <a v-for="item in msg.characters" :key="item">
                  {{ item }}
                  <br>
              </a>
          </tr>

          <tr>
              <td>planets</td>
              <a v-for="item in msg.planets" :key="item">
                  {{ item }}
                  <br>
              </a>
          </tr>

          <tr>
              <td>starships</td>
              <a v-for="item in msg.starships" :key="item">
                  {{ item }}
                  <br>
              </a>
          </tr>

          <tr>
              <td>vehicles</td>
              <a v-for="item in msg.vehicles" :key="item">
                  {{ item }}
                  <br>
              </a>
          </tr>

          <tr>
              <td>species</td>
              <a v-for="item in msg.species" :key="item">
                  {{ item }}
                  <br>
              </a>
          </tr>


      </table>
  </div>
</template>


<script>

export default {
    name: 'films',
    props:{
        msg : String

    },
}
</script>


