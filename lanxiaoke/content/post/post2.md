+++
title = "07-13的学习日报"
weight = 5
+++
# 一 Gitflow的学习  
Gitflow工作流通过为功能开发、发布准备和维护分配独立的分支，让发布迭代过程更流畅。严格的分支模型 也为大型项目提供了一些非常必要的结构。  

**工作方式**   
Gitflow工作流仍然用中央仓库作为所有开发者的交互中心。和其它的工作流一样，开发者在本地工作并push 分支到要中央仓库中  

master分支：  主分支，产品功能全部实现后，在master分支对外发布  
develop分支： 开发分支，产品的coding在这进行  
release分支： 测试分支，基于develop分支的克隆，测试发现的小bug，在此修复再合并到develop分支    

# 二 docker  
docker pull  
在公司私库拉取nginx镜像  
docker run -d  唯一镜像编号  
docker run -d  -p 8080：80 registry.saas.hand-china.com/tools/nginx  
docker build
Dockerfile
docker ps   
*nginx 俄罗斯服务器 轻量 前端服务器   
docker machine.exe env  

winpty docker exec -it <镜像编号> //bin/bash    
docker push <镜像名>  
组成dockerhub账号  
winpty docker login hub.docker.com  
docker tag 贴标签  
docker kill <编号>  

作业 ：在本地搭个mysql  
docker run --name test-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d registry.saas.hand-china.com/tools/mysql:5.6  

## **docker compose**

# 三 Java基础的学习

# 四 周末作业 
1. 在github创建一个库
2. 创建hugo博客
3. dockerfile，把博客打包成一个docker镜像
4. build.sh
5. run.sh
6. 日报，总结
