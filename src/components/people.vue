<template>
  <div>
      <h1 align="center"> 人物介绍 </h1>
    <table class="table table-bordered table-striped text-center"> 
      <tr>
        <td>name</td>
        <td>{{msg.name}}</td>
      </tr>
      <tr>
        <td>height</td>
        <td>{{msg.height}}</td>
      </tr>
      <tr>
        <td>mass</td>
        <td>{{msg.mass}}</td>
      </tr>
      <tr>
        <td>hair_color</td>
        <td>{{msg.hair_color}}</td>
      </tr>
      <tr>
        <td>skin_color</td>
        <td>{{msg.skin_color}}</td>
      </tr>
      <tr>
        <td>eye_color</td>
        <td>{{msg.eye_color}}</td>
      </tr>
      <tr>
        <td>birth_year</td>
        <td>{{msg.birth_year}}</td>
      </tr>
      <tr>
        <td>gender</td>
        <td>{{msg.gender}}</td>
      </tr>
      <tr>
        <td>homeworld</td>
        <a >{{msg.homeworld}}</a>
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
        <a >{{msg.url}}</a>
      </tr>

      <tr>
        <td>films</td>
         <a v-for="item in msg.films" :key = "item">
            {{ item }}
            <br>
        </a>
      </tr>
      <tr>
        <td>species</td>
         <a v-for="item in msg.species" :key = "item">
            {{ item }}
            <br>
        </a>
      </tr>
      <tr>
        <td>vehicles</td>
         <a v-for="item in msg.vehicles" :key = "item">
            {{ item }}
            <br>
        </a>
      </tr>
      <tr>
        <td>starships</td>
         <a  v-for="item in msg.starships" :key = "item">
            {{ item }}
            <br>
        </a>
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


