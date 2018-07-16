+++
title = "07-12的学习日报"
weight = 5
+++
# 一 Git操作  
* 熟悉Git操作  
1. git push 出现"Already up to date."  
操作完成后需要完成以下两步  
git add .  
git commit -m " "  
2. git push 发生冲突    
根据提示信息或者 git status 查看发生冲突的文件，根据不同标记做出修改后保存，重新add 和 commit  
* markdown语法  
1. 段落与换行    
前后都有一个以上的空行 
2. 标题         
1到6个“#”对应标题1-6阶 
3. 块区引用          
可嵌套，根据“>”的数量来决定嵌套层数


# 二  Docker简介  
* 什么是Docker  

  Docker是一个开源的引擎，可以轻松的为任何应用创建一个轻量级的、可移植的、自给自足的容器。开发者在笔记本上编译测试通过的容器可以批量地在生产环境中部署，包括VMs（虚拟机）、bare metal、OpenStack 集群和其他的基础应用平台。

* 运用场景  

  web应用的自动化打包和发布；  
  自动化测试和持续集成、发布；  
  在服务型环境中部署和调整数据库或其他的后台应用；  
  从头编译或者扩展现有的OpenShift或Cloud Foundry平台来搭建自己的PaaS环境。  

* 安装时碰到的问题 

  “error in driver during machine creation:This computer doesn’t have VT-X/AMD-v enabled .Enabling it in the BIOS is mandatory”
  解决方法：进入BIOS界面, advance > 勾选Virtual或Virtualization。  

# 三 Docker的基本操作
* 镜像的基本操作   
```
docker pull  #获取镜像  
docker images  #查看镜像
 -a #列出本地所有的镜像（含中间映像层，默认情况下，过滤掉中间映像层） 
 --digests  #显示镜像的摘要信息；  
 -f  #显示满足条件的镜像；  
 --format  #指定返回值的模板文件；  
 --no-trunc  #显示完整的镜像信息；  
 -q #只显示镜像ID。     
docker run  #运行镜像  
docker rmi  #删除镜像  
 -f  #强制删除；
 --no-prune  #不移除该镜像的过程镜像，默认移除
docker tag  #标记本地镜像，将其归入某一仓库
docker exec  #修改容器中的文件
docker diff  #查看改动记录
docker history  #查看镜像内历史记录
docker run  #运行镜像
docker commit  #在容器中创建新镜像 （慎用）
 -a  #提交的镜像作者；
 -c  #使用Dockerfile指令来创建镜像；
 -m  #提交时的说明文字；
 -p  #在commit时，将容器暂停
```
# 四 Java语言基础  
* 小类型向大类型转换
1. 小类型向大类型的转换会自动完成，有JVM负责
2. 自动转换规则：符号位自动拓展，负数补1，正数补0
3. 自动转换类型包含以下情况
 （1）byte->short->int->long->float->double
 （2）int和char类型某些情况下可以自动相互转换
   Java对char类型的数据在底层是按int类型来处理的
4. 整数到浮点数转换会损失精确度  
* 变量的自加、自减、自乘、自除运算   
（1）自增  
 a.先加1：++1   
 int i=1;  
 System.out.println(++i)  
 输出结果为2，变量i的值为2  
 b.后加1：  
 int i=1;  
 System.out.println(i++)  
 输出结果为1，变量i的值为2  
（2）自减  
   与自增原理类似  
（3）自乘  
  i*=n等效于i=i*n  
（4）自除  
  i/=n等效于i=i/n

* Java逻辑运算符优先级  
  非运算最高  
  其次是与运算  
  优先级最低的是或运算  

