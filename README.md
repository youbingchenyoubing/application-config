配置中心
=====


[Spring Cloud Config 配置中心](https://juejin.im/post/5adeea37f265da0b8a674337)

[史上最简单的SpringCloud教程 | 第六篇: 分布式 配置中心](https://blog.csdn.net/forezp/article/details/70037291)

[Spring Cloud源码分析之Eureka篇第三章：EnableDiscoveryClient与EnableEurekaClient的区别(Edgware版本)](https://blog.csdn.net/boling_cavalry/article/details/82668480)

[Config Server——配置内容的加密与解密](http://www.itmuch.com/spring-cloud/config-server-encrypt-decrypt/)

[spring-cloud-starter is missing spring-security-rsa causing spring-cloud-client to fail to do local decryption](https://github.com/spring-cloud/spring-cloud-config/issues/84)

[](https://www.oschina.net/question/3877992_2281476)

[深入理解SpringCloud之引导程序应用上下文](https://www.cnblogs.com/niechen/p/8968204.html#_label0)

[深入理解SpringBoot之启动探究](https://www.cnblogs.com/niechen/p/8947973.html)

[Spring Cloud Config服务端配置细节](https://mp.weixin.qq.com/s/Moab4xUudoY6Xz_i4HNo4g)

[Spring Cloud Config统一配置管理](https://mrbird.cc/Spring-Cloud-Config.html)

[banner制作](https://www.cnblogs.com/woshimrf/p/banner-ascii-2-txt.html)

[docker基本命令](http://www.runoob.com/docker/docker-run-command.html)

本地配置文件内容加密
======
mac
```shell
/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home/jre/lib/security
```

创建一个Key store
```shell
keytool -genkeypair -alias config-server -keyalg RSA   -dname "CN=Web Server,OU=Unit,O=Organi
zation,L=City,S=State,C=US" -keypass just-do-it@everything.com -keystore server.jks -storepass just-do-it@everything.com
```

```shell
docker run -p 8762:8762 -d -e SPRING_PROFILE_ACTIVE="dev"  registry.cn-hangzhou.aliyuncs.com/just-do-it/common-config:1.0.0
```