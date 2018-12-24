# sw-api 前端仓库

## 1.How to start?

first confirm you have installed the npm， if not try [install Node.js and npm](https://www.liaoxuefeng.com/wiki/001434446689867b27157e896e74d51a89c25cc8b43bdb3000/00143450141843488beddae2a1044cab5acb5125baf0882000) 

and you should install vue-cli

```
npm install -g vue-cl
```

### install
```
npm install
```

### complies and run
```
npm run serve
```

### build 
```
npm run build
```

## use of container

```
#build
npm run build

# build the image
docker build -t client .

# run the demo
docker run -p 88:80 client


```


