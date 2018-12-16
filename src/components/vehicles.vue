<template>
  <div>
      <h1 align="center"> vehicles </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>名称</td>
              <td>{{msg["data"]["vehicles"].Name}}</td>
          </tr>

          <tr>
              <td>模型</td>
              <td>{{msg["data"]["vehicles"].Model}}</td>
          </tr>

          <tr>
              <td>制造商</td>
              <td>{{msg["data"]["vehicles"].Manufacturer}}</td>
          </tr>

          <tr>
              <td>最高时速</td>
              <td>{{msg["data"]["vehicles"].CostInCredits}}</td>
          </tr>

          <tr>
              <td>长度</td>
              <td>{{msg["data"]["vehicles"].Length}}</td>
          </tr>

          <tr>
              <td>最高太空飞行速度</td>
              <td>{{msg["data"]["vehicles"].MaxAtmospheringSpeed}}</td>
          </tr>

          <tr>
              <td>机组人员</td>
              <td>{{msg["data"]["vehicles"].Crew}}</td>
          </tr>

          <tr>
              <td>乘客</td>
              <td>{{msg["data"]["vehicles"].Passengers}}</td>
          </tr>

          <tr>
              <td>装运能力</td>
              <td>{{msg["data"]["vehicles"].CargoCapacity}}</td>
          </tr>

          <tr>
              <td>消耗</td>
              <td>{{msg["data"]["vehicles"].Consumables}}</td>
          </tr>

          <tr>
              <td>等级</td>
              <td>{{msg["data"]["vehicles"].VehicleClass}}</td>
          </tr>

          <tr>
              <td>创造时间</td>
              <td>{{msg["data"]["vehicles"].Created}}</td>
          </tr>

          <tr>
              <td>更新时间</td>
              <td>{{msg["data"]["vehicles"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["vehicles"].URL}}</td>
          </tr>

          <tr>
              <td>飞行员</td>
              <td>
              <a v-for="item in msgtmp.PilotURLs" :key="item">
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
    name: 'vehicles',
    props:{
        msg : String

        },
        data() {
            return {
                msgtmp: []
            }
        },
        updated() {
            this.msgtmp = this.msg["data"]["vehicles"]
        }
}
</script>


