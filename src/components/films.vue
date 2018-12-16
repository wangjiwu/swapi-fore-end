<template>
  <div>
      <h1 align="center"> films </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>名称</td>
              <td>{{msg["data"]["films"].Title}}</td>
          </tr>

          <tr>
              <td>ID</td>
              <td>{{msg["data"]["films"].EpisodeID}}</td>
          </tr>

          <tr>
              <td>开端</td>
              <td>{{msg["data"]["films"].OpeningCrawl}}</td>
          </tr>

          <tr>
              <td>导演</td>
              <td>{{msg["data"]["films"].Director}}</td>
          </tr>

          <tr>
              <td>制作人</td>
              <td>{{msg["data"]["films"].Producer}}</td>
          </tr>

          <tr>
              <td>上映时间</td>
              <td>{{msg["data"]["films"].release_date}}</td>
          </tr>

          <tr>
              <td>创造时间</td>
              <td>{{msg["data"]["films"].Created}}</td>
          </tr>

          <tr>
              <td>更新时间</td>
              <td>{{msg["data"]["films"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["films"].URL}}</td>
          </tr>

          <tr>
              <td>特征</td>
              <td>
              <a v-for="item in msgtmp.CharacterURLs" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>星球</td>
              <td>
              <a v-for="item in msgtmp.PlanetURLs" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>飞船</td>
              <td>
              <a v-for="item in msgtmp.StarshipURLs" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>运载工具</td>
              <td>
              <a v-for="item in msgtmp.VehicleURLs" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>物种</td>
              <td>
              <a v-for="item in msgtmp.SpeciesURLs" :key="item">
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
        data() {
            return {
                msgtmp: []
            }
        },
        updated() {
            this.msgtmp = this.msg["data"]["films"]
        }
}
</script>


