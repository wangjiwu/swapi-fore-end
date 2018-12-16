<template>
  <div>
      <h1 align="center"> starships </h1>
      <table border="1" class="table table-bordered table-striped text-center">
          <tr>
              <td>名称</td>
              <td>{{msg["data"]["starships"].Name}}</td>
          </tr>

          <tr>
              <td>模型</td>
              <td>{{msg["data"]["starships"].Model}}</td>
          </tr>

          <tr>
              <td>制造商</td>
              <td>{{msg["data"]["starships"].Manufacturer}}</td>
          </tr>

          <tr>
              <td>成本</td>
              <td>{{msg["data"]["starships"].CostInCredits}}</td>
          </tr>

          <tr>
              <td>长度</td>
              <td>{{msg["data"]["starships"].Length}}</td>
          </tr>

          <tr>
              <td>最高时速</td>
              <td>{{msg["data"]["starships"].MaxAtmospheringSpeed}}</td>
          </tr>

          <tr>
              <td>机组人员</td>
              <td>{{msg["data"]["starships"].Crew}}</td>
          </tr>

          <tr>
              <td>乘客</td>
              <td>{{msg["data"]["starships"].Passengers}}</td>
          </tr>

          <tr>
              <td>装运能力</td>
              <td>{{msg["data"]["starships"].CargoCapacity}}</td>
          </tr>

          <tr>
              <td>消耗</td>
              <td>{{msg["data"]["starships"].Consumables}}</td>
          </tr>

          <tr>
              <td>超驱动等级</td>
              <td>{{msg["data"]["starships"].HyperdriveRating}}</td>
          </tr>

          <tr>
              <td>MGLT</td>
              <td>{{msg["data"]["starships"].MGLT}}</td>
          </tr>

          <tr>
              <td>飞船等级</td>
              <td>{{msg["data"]["starships"].StarshipClass}}</td>
          </tr>

          <tr>
              <td>创造时间</td>
              <td>{{msg["data"]["starships"].creCreatedated}}</td>
          </tr>

          <tr>
              <td>更新时间</td>
              <td>{{msg["data"]["starships"].Edited}}</td>
          </tr>

          <tr>
              <td>URL</td>
              <td>{{msg["data"]["starships"].URL}}</td>
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
    name: 'starships',
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


