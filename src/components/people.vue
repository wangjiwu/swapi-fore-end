<template>
  <div>
      <h1 align="center"  > 人物介绍 </h1>
    <table class="table table-bordered table-striped text-center" border="1" > 
        <tr>
            <td>Name</td>
            <td>{{msg["data"]["people"].Name}}</td>
        </tr>
      <tr>
          <td>Height</td>
          <td>{{msg["data"]["people"].Height}}</td>
      </tr>
      <tr>
          <td>Mass</td>
          <td>{{msg["data"]["people"].Mass}}</td>
      </tr>
      <tr>
          <td>HairColor</td>
          <td>{{msg["data"]["people"].HairColor}}</td>
      </tr>
      <tr>
          <td>SkinColor</td>
          <td>{{msg["data"]["people"].SkinColor}}</td>
      </tr>
      <tr>
          <td>EyeColor</td>
          <td>{{msg["data"]["people"].EyeColor}}</td>
      </tr>
      <tr>
          <td>BirthYear</td>
          <td>{{msg["data"]["people"].BirthYear}}</td>
      </tr>
      <tr>
          <td>Gender</td>
          <td>{{msg["data"]["people"].Gender}}</td>
      </tr>
      <tr>
          <td>Homeworld</td>
          <a>{{msg["data"]["people"].Homeworld}}</a>
      </tr>
      <tr>
          <td>Created</td>
          <td>{{msg["data"]["people"].Created}}</td>
      </tr>
      <tr>
          <td>Edited</td>
          <td>{{msg["data"]["people"].Edited}}</td>
      </tr>
      <tr>
          <td>URL</td>
        
          <a>{{msg["data"]["people"].URL}}</a>
      </tr>

      <tr>
        <td>films</td>
        <td>
         <a v-for="item in msg.films" :key = "item">
            {{ item }}
            <br>
        </a>
        </td>
      </tr>
      <tr>
        <td>species</td>
        <td>
         <a v-for="item in msg.species" :key = "item">
            {{ item }}
            <br>
        </a>
        </td>
      </tr>
      <tr>
        <td>vehicles</td>
        <td>
         <a v-for="item in msg.vehicles" :key = "item">
            {{ item }}
            <br>
        </a>
        </td>
      </tr>
      <tr>
        <td>starships</td>
        <td>
         <a  v-for="item in msg.starships" :key = "item">
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

