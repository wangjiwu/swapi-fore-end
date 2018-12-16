<template>
  <div>
      <h1 align="center"> species </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>名称</td>
              <td>{{msg["data"]["species"].Name}}</td>
          </tr>

          <tr>
              <td>分类</td>
              <td>{{msg["data"]["species"].Classification}}</td>
          </tr>

          <tr>
              <td>选派</td>
              <td>{{msg["data"]["species"].Designation}}</td>
          </tr>

          <tr>
              <td>平均高度</td>
              <td>{{msg["data"]["species"].AverageHeight}}</td>
          </tr>

          <tr>
              <td>肤色</td>
              <td>{{msg["data"]["species"].SkinColors}}</td>
          </tr>

          <tr>
              <td>发色</td>
              <td>{{msg["data"]["species"].HairColors}}</td>
          </tr>

          <tr>
              <td>瞳孔颜色</td>
              <td>{{msg["data"]["species"].EyeColors}}</td>
          </tr>

          <tr>
              <td>平均寿命</td>
              <td>{{msg["data"]["species"].AverageLifespan}}</td>
          </tr>

          <tr>
              <td>家乡</td>
              <td>{{msg["data"]["species"].Homeworld}}</td>
          </tr>

          <tr>
              <td>语言</td>
              <td>{{msg["data"]["species"].Language}}</td>
          </tr>

          <tr>
              <td>创造时间</td>
              <td>{{msg["data"]["species"].Created}}</td>
          </tr>

          <tr>
              <td>更新时间</td>
              <td>{{msg["data"]["species"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["species"].URL}}</td>
          </tr>

          <tr>
              <td>人类</td>
              <td>
              <a v-for="item in msgtmp.PeopleURLs" :key="item">
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
    name: '',
    props:{
        msg : String

        },
        data() {
            return {
                msgtmp: []
            }
        },
        updated() {
            this.msgtmp = this.msg["data"]["species"]
        }
}
</script>


