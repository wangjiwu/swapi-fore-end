<template>
  <div>
      <h1 align="center"> planets </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>名称</td>
              <td>{{msg["data"]["planets"].Name}}</td>
          </tr>

          <tr>
              <td>旋转周期</td>
              <td>{{msg["data"]["planets"].RotationPeriod}}</td>
          </tr>

          <tr>
              <td>轨道周期</td>
              <td>{{msg["data"]["planets"].OrbitalPeriod}}</td>
          </tr>

          <tr>
              <td>直径</td>
              <td>{{msg["data"]["planets"].Diameter}}</td>
          </tr>

          <tr>
              <td>气候</td>
              <td>{{msg["data"]["planets"].Climate}}</td>
          </tr>

          <tr>
              <td>重力</td>
              <td>{{msg["data"]["planets"].Gravity}}</td>
          </tr>

          <tr>
              <td>地形</td>
              <td>{{msg["data"]["planets"].Terrain}}</td>
          </tr>

          <tr>
              <td>地表水量</td>
              <td>{{msg["data"]["planets"].SurfaceWater}}</td>
          </tr>

          <tr>
              <td>人口</td>
              <td>{{msg["data"]["planets"].Population}}</td>
          </tr>

          <tr>
              <td>创造时间</td>
              <td>{{msg["data"]["planets"].Created}}</td>
          </tr>

          <tr>
              <td>更新时间</td>
              <td>{{msg["data"]["planets"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["planets"].URL}}</td>
          </tr>

          <tr>
              <td>居民</td>
              <td>
              <a v-for="item in msgtmp.ResidentURLs" :key="item">
                  {{ item }}
                  <br>
              </a>
              </td>
          </tr>

          <tr>
              <td>电影</td>
              <td>
              <a v-for="item in msgtmp.FilmURLs" :key="item">
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
        data() {
            return {
                msgtmp: []
            }
        },
        updated() {
            this.msgtmp = this.msg["data"]["planets"]
        }
}
</script>


