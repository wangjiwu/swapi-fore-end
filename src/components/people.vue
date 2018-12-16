<template>
  <div>
      <h1 align="center"  > 人物介绍 </h1>
    <table class="table table-bordered table-striped text-center" border="1" > 
        <tr>
            <td>名称</td>
            <td>{{msg["data"]["people"].Name}}</td>
        </tr>

      <tr>
          <td>高度</td>
          <td>{{msg["data"]["people"].Height}}</td>
      </tr>

      <tr>
          <td>质量</td>
          <td>{{msg["data"]["people"].Mass}}</td>
      </tr>

      <tr>
          <td>发色</td>
          <td>{{msg["data"]["people"].HairColor}}</td>
      </tr>

      <tr>
          <td>肤色</td>
          <td>{{msg["data"]["people"].SkinColor}}</td>
      </tr>

      <tr>
          <td>瞳孔颜色</td>
          <td>{{msg["data"]["people"].EyeColor}}</td>
      </tr>

      <tr>
          <td>出生年月</td>
          <td>{{msg["data"]["people"].BirthYear}}</td>
      </tr>

      <tr>
          <td>性别</td>
          <td>{{msg["data"]["people"].Gender}}</td>
      </tr>

      <tr>
          <td>家乡</td>
          <a>{{msg["data"]["people"].Homeworld}}</a>
      </tr>

      <tr>
          <td>创造时间</td>
          <td>{{msg["data"]["people"].Created}}</td>
      </tr>

      <tr>
          <td>更新时间</td>
          <td>{{msg["data"]["people"].Edited}}</td>
      </tr>

      <tr>
          <td>URL</td>
        
          <a>{{msg["data"]["people"].URL}}</a>
      </tr>

      <tr>
        <td>电影</td>
        <td>
         <a v-for="item in msgtmp.FilmURLs" :key = "item">
            {{ item }}
            <br>
        </a>
        </td>
      </tr>
      <tr>
        <td>种类</td>
        <td>
         <a v-for="item in msgtmp.SpeciesURLs" :key = "item">
            {{ item }}
            <br>
        </a>
        </td>
      </tr>
      <tr>
        <td>运载工具</td>
        <td>
         <a v-for="item in msgtmp.VehicleURLs" :key = "item">
            {{ item }}
            <br>
        </a>
        </td>
      </tr>
      <tr>
        <td>飞船</td>
        <td>
         <a  v-for="item in msgtmp.StarshipURLs" :key = "item">
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
    name: 'people',
    props:{
        msg : Object

    },
    data() {
        return {
            msgtmp: []
        }
    },
    updated() {
        this.msgtmp = this.msg["data"]["people"]
    }

}
</script>

<style>
h1{
  margin-bottom: 50px 
}
.table{
  margin-bottom: 150px 
}

.table tr{
  height: 25px;

}
</style>

