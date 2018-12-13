<template>
  <div>
      <h1 align="center"> films </h1>
    <table class="table table-bordered table-striped text-center"> 
      <tr>
        <td>name</td>
        <td>{{msg.name}}</td>
      </tr>
    
      <tr>
        <td>films</td>
         <a v-for="item in msg.films" :key = "item">
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


