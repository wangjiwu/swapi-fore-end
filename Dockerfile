#设置nginx版本
FROM hub.c.163.com/library/nginx
#设置主目录
WORKDIR /app
COPY package*.json ./
#进行安装
RUN npm install
#把所有的项目文件都进行拷贝
COPY . .
# 进行build
RUN npm run build
#暴露端口 8888
EXPOSE 8888

RUN echo 'success！'