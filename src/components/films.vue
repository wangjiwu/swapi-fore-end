<template>
  <div>
      <h1 align="center"> films </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>Title</td>
              <td>{{msg["data"]["films"].Title}}</td>
          </tr>

          <tr>
              <td>EpisodeID</td>
              <td>{{msg["data"]["films"].EpisodeID}}</td>
          </tr>

          <tr>
              <td>OpeningCrawl</td>
              <td>{{msg["data"]["films"].OpeningCrawl}}</td>
          </tr>

          <tr>
              <td>Director</td>
              <td>{{msg["data"]["films"].Director}}</td>
          </tr>

          <tr>
              <td>Producer</td>
              <td>{{msg["data"]["films"].Producer}}</td>
          </tr>

          <tr>
              <td>release_date</td>
              <td>{{msg["data"]["films"].release_date}}</td>
          </tr>

          <tr>
              <td>Created</td>
              <td>{{msg["data"]["films"].Created}}</td>
          </tr>

          <tr>
              <td>Edited</td>
              <td>{{msg["data"]["films"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["films"].URL}}</td>
          </tr>

          <tr>
              <td>characters</td>
              <td>
              <a v-for="item in msg.characters" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>planets</td>
              <td>
              <a v-for="item in msg.planets" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>starships</td>
              <td>
              <a v-for="item in msg.starships" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>vehicles</td>
              <td>
              <a v-for="item in msg.vehicles" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>species</td>
              <td>
              <a v-for="item in msg.species" :key="item">
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
    name: 'films',
    props:{
        msg : String

    },
}
</script>


