# 使用 Node.js 官方镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制所有文件到容器
COPY . .

# 暴露端口（微信后端通常用 80 或 443）
EXPOSE 80

# 启动命令（根据你的项目调整，比如 "npm start" 或 "node server.js"）
CMD ["npm", "start"]
